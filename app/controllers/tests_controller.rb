class TestsController < ApplicationController
  def index
      session[:answers] = {}
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
      redirect_to results_path
    end
  end

def results
  answers = session[:answers] || {}

  scores = {
    "D" => 0,
    "I" => 0,
    "S" => 0,
    "C" => 0
  }

  answers.each_value do |choice_id|
    choice = Choice.find(choice_id)

    scores[choice.disc_type] += 1
  end

  sorted_scores = scores.sort_by { |_, score| -score }

  @primary_type = sorted_scores[0][0]
  @secondary_type = sorted_scores[1][0]

  @scores = scores

  profile_code = "#{@primary_type}-#{@secondary_type}"

@profile = PersonalityProfile.find_by(code: profile_code)
@test_result = TestResult.create!(
  dominant_score: scores["D"],
  influent_score: scores["I"],
  stable_score: scores["S"],
  conscientious_score: scores["C"],
  primary_type: @primary_type,
  secondary_type: @secondary_type,
  profile_code: profile_code
)
end


end
