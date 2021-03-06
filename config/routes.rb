Rails.application.routes.draw do
  devise_for :users

  root 'developers#index'

  resources :users, only: [:show]
  resources :developers, only: [:show, :index, :new, :create] do
    resource :projects, only: [:new, :create]
    
    # post '/projects' => 'projects#create'
    # get '/projects/new' => 'projects#new'
  end
  
  resources :languages, only: [:show, :index]

  resources :projects, only: [:index] do
    member do
      put "upvote", to: "projects#upvote"
      put "unvote", to: "projects#unvote"
    end
  end
end
