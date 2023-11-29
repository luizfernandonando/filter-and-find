Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :companies, only: %i[show index]
end
