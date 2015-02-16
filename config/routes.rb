Rails.application.routes.draw do
  get 'sessions/new'

  resources :users

  resources :valentines
  
  root 'welcome#index'
end
