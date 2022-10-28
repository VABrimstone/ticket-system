Rails.application.routes.draw do
  root 'static_pages#index'

  devise_for :users, controllers: {
    registrations: 'registrations'
  }
  resources :users, only: %i[index edit update]
end
