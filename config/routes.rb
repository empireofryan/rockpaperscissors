Rails.application.routes.draw do
  root to: "players#new"
  resources :games, only: [:show, :create]
  resources :players, only: [:new]
  resources :choices


end
