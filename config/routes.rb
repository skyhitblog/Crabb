CarrierWaveExample::Application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get "home/index"
  devise_for :users, controllers: { registrations: "registrations" }
  resources :resumes, only: [:index, :new, :create, :destroy]
  root "home#index"
end
