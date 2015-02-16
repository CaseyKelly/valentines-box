Rails.application.routes.draw do

  resources :users

  resources :sessions

  resources :valentines

  root 'welcome#index'
end
