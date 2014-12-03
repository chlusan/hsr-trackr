Rails.application.routes.draw do

  devise_for :users

  resources :stops, only: :show

  resources :stop_times, only: :show

  root to: 'main#home'
  
end
