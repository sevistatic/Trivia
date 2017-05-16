Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/welcome', to: 'welcome#index'
  get '/trivia/high_scores', to: 'trivia#high_scores'
  get '/trivia', to: 'trivia#index'
  post '/trivia', to: 'trivia#submit'
  root 'welcome#index'
end
