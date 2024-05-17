Rails.application.routes.draw do
  devise_for :users

  resources :properties do
    resources :bookings, only: [:create, :new]
    resources :reviews, only: [:create, :new]
  end

  resources :bookings, only: [:index, :show, :update, :destroy]
  resources :reviews, only: [:index, :show, :update, :destroy]
end
