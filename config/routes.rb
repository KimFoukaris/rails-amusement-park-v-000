Rails.application.routes.draw do

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  resources :users, only: [:new, :create, :show]
  resources :attractions, only: [:index, :new, :create, :show]
  resources :rides, only: [:create]

  namespace :admin do
    resources :attractions, only: [:index, :new, :create, :edit]
  end

  root 'welcome#home'
end
