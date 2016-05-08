CarrierWaveExample::Application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  get "creatives/index"
  root "creatives#index"

  devise_for :users, controllers: { registrations: "registrations" }
  resources :resumes, only: [:index, :new, :create, :destroy]
  
end
