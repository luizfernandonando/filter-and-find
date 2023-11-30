Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"

  get "about_us", to: "pages#about_us"
  get "contact", to: "pages#contact"

  get 'user_skills', to: 'users#skills'

  resources :skills, only: %i[index] do
    member do
      post "add_to_user", to: 'skills#add_to_user'
    end
  end

  resources :companies, only: %i[show index]
  resources :jobs, only: %i[show index]
  resources :users, only: %i[show edit update] do
    member do
      get 'favorite_jobs', to: 'users#favorite_jobs'
    end
  end
end
