Rails.application.routes.draw do
  resources :coaches
  resources :locations
  resources :users do
    resource :appointments, only: [:new, :show, :index]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
