Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :company

  resources :jobs, only: %i[index show]
end
