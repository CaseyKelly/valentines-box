Rails.application.routes.draw do
  resources :valentines
  
  root 'welcome#index'
end
