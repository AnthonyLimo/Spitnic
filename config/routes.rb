Rails.application.routes.draw do
  get 'sessions/new'

  resources :users

  resources :sessions
  #get 'articles/index'

  #get 'articles/show'

  #get 'articles/edit'

  resources :articles

  root to: 'articles#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
