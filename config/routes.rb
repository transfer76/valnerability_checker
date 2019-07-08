require 'sidekiq/web'

Rails.application.routes.draw do
  devise_for :users

  root 'vulnerabilities#index'

  resources :vulnerabilities, except: :edit

  mount Sidekiq::Web => '/sidekiq'
end
