Rails.application.routes.draw do
  resources :coaches
  resources :locations
  resources :users do
    resource :appointments, only: [:new, :show, :index]
  end

  root to: "user#show"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
