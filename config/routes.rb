Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :beasts, only: [ :index, :show ]

  resources :quizzes, only: [ :index, :show ] do
    resources :questions, only: [ :index, ] do
      resources :answers, only: [ :index ]
    end
  end

  resources :questions, only: [ :show ]
  resources :answers, only: [ :show ]

end

# quizzes - theoretically can only see the one quiz, but were there more, we could see all.
# beasts - we can see a beast, we can see all beasts
# questions - we can see a question, we can see all questions
# answers - we can see an answer, we can see all answers

# the user cannot create, update or destroy, so only index and show routes required.
