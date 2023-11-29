Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"
  resources :companies, only: %i[show index]
  resources :jobs, only: %i[show index]
  resources :users, only: %i[show edit update] do
    member do
      get 'skills', to: 'users#skills'
      get 'favorite_jobs', to: 'users#favorite_jobs'
    end
  end
end
