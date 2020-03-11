Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'welcome#home'
  resources :students, only: [:show, :new, :create, :edit, :update] do
    resources :courses, only: [:show]
    resources :enrollments, only: [:new]
  end 
  resources :courses, only: [:index, :show]

  resources :enrollments, only: [:index, :new, :create, :destroy]

  get '/login', to: 'sessions#new'
  get '/auth/github/callback' => 'sessions#github'
  post '/sessions', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
end
