Rails.application.routes.draw do
  root "home#index"
  resources :teams, only: [:index, :show, :new, :create]
  resources :players, only: [:index, :show, :new, :create]
  resources :games, only: [:index, :show, :new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
