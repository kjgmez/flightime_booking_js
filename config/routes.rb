Rails.application.routes.draw do

  devise_for :users, controllers: {omniauth_callbacks: "callbacks", registrations: 'registrations'}

  resources :locations, only: [:index, :show] do
    resources :coaches, only: [:index, :show]
  end

  resources :users do
    resources :appointments
  end

  root to: "users#show"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
