Rails.application.routes.draw do
  get 'reviews/show'
  devise_for :users
  root to: 'static_pages#home'
  get 'static_pages/home'
  match '/search', to: "static_pages#search", via: [:get, :post], as: :search
  resources :movies
end
