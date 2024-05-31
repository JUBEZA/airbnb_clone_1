Rails.application.routes.draw do
  devise_for :users

  resources :properties do
    resources :bookings, only: [:create, :new]
    resources :reviews, only: [:create, :new]
  end

  resources :bookings, only: [:index, :show, :edit, :update, :destroy]
  resources :reviews, only: [:index, :show, :edit, :update, :destroy]

  namespace :api do
    namespace :v1 do
      resources :properties, only: [:index, :show]
    end
  end

  root to: 'properties#index'
end
