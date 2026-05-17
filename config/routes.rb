

Rails.application.routes.draw do
  root "tests#index"

  resources :tests, only: [:index, :show] do
    post :answer, on: :member
  end
  get "results", to: "tests#results"
end