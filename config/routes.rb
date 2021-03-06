Rails.application.routes.draw do
  devise_for :users
  root "home#index"
  resources :teams, only: [:index, :new, :create]
  resources :players, only: [:index, :new, :create]
  resources :games, only: [:index, :show, :new, :create] do
    resources :performances, only: [:index, :new, :create]
  end
  # :update do
  #   resources :performances, only: [:new, :create]
  # end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
