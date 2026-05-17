class TestsController < ApplicationController
  def index
  end

  def show
    @question = Question.find_by(position: params[:id])

    if @question.nil?
      redirect_to root_path, alert: "Question introuvable"
    end
  end

 def answer
    session[:answers] ||= {}
    session[:answers][params[:id]] = params[:choice_id]

    next_question_position = params[:id].to_i + 1

    if Question.exists?(position: next_question_position)
      redirect_to test_path(next_question_position)
    else
      redirect_to root_path, notice: "Test terminé. Calcul du résultat à venir."
    end
  end
    
end
