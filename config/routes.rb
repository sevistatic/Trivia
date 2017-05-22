Rails.application.routes.draw do
  resources :scores
  resources :trivia
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/welcome', to: 'welcome#index'
  get '/trivia', to: 'trivia#index'
  post '/trivia/submit', to: 'trivia#submit'
  get '/trivia/questions', to: 'trivia#questions'
  get '/trivia/new', to: 'trivia#new'


  get '/accounts/new', to: 'accounts#new', as: 'new_account'
  get '/accounts/log_in', to: 'accounts#log_in', as: 'log_in'
  get '/accounts/facebook_log_in', to: 'accounts#facebook_log_in', as: 'facebook_log_in'
  root 'welcome#index'
end
