Rails.application.routes.draw do
  get 'main/search'
  root "movies#index"
  get :search, controller: :main
  get :autocomplete, controller: :main
  resources :movies, only: [:index, :show]
  resources :directors, only: [:index, :show]
end
