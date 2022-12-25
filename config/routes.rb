Rails.application.routes.draw do
  root 'static_pages#index'

  devise_for :users, controllers: {
    registrations: 'registrations'
  }
  resources :users, only: %i[index edit update]

  resources :departments, only: %i[index new create edit update]
  resources :tickets
end
