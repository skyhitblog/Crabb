CarrierWaveExample::Application.routes.draw do

  get "home/index"
  devise_for :users, controllers: { registrations: "registrations" }
  resources :resumes, only: [:index, :new, :create, :destroy]
  root "resumes#index"
end
