Rails.application.routes.draw do
  devise_for :users
  get 'home/index'

    resources :albums do
      resources :pictures
    end

  root 'home#index'
end
