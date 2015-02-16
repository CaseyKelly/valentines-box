Rails.application.routes.draw do
  resources :users

  resources :valentines
  
  root 'welcome#index'
end
