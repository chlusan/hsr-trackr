Rails.application.routes.draw do

  devise_for :users

  resources :stops, only: :show

  root to: 'main#home'
  
end
