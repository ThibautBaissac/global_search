Rails.application.routes.draw do
  root "movies#index"
  resources :movies, only: [:index, :show]
  resources :directors, only: [:index, :show]
end
