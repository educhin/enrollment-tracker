Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :students, only: [:show, :new, :create, :edit, :update] do
    resources :courses, only: [:index, :show]
  end 
  resources :courses, only: [:index, :show]

  get '/login', to: 'sessions#new'
  get '/auth/github/callback' => 'sessions#github'
  post '/sessions', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  post '/enroll', to: 'courses#enroll'
  post '/drop_class', to: 'courses#drop_class'
end
