Rails.application.routes.draw do
  devise_for :admins, path: "admins"
  get "welcome/index"
  root "welcome#index"
  resources :resources
  resources :tags, only: [:index, :show]
end
