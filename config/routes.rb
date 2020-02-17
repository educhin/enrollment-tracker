Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :students
  get '/login', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
end
