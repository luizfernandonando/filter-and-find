Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"

  get "about_us", to: "pages#about_us"
  get "contact", to: "pages#contact"

  get 'user_skills', to: 'users#skills'
  get "new_skill", to: "users#new_skill"
  post "add_skill", to: "users#add_skill"

  resources :skills, only: %i[index]
  resources :companies, only: %i[show index]
  resources :jobs, only: %i[show index]
  resources :users, only: %i[show edit update] do
    member do
      get 'favorite_jobs', to: 'users#favorite_jobs'
    end
  end
end
