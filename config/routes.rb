# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :business_users, path: 'business_users', controllers: {
    sessions: 'business_users/sessions',
    registrations: 'business_users/registrations'
  }
  devise_scope :business_users do
    get '/business_users/sign_out' => 'devise/sessions#destroy'
  end

  devise_for :users, path: 'users', controllers: {
    sessions: 'users/sessions', registrations: 'users/registrations'
  }
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  # For details on the DSL available within this file,
  # see http://guides.rubyonrails.org/routing.html

  root to: 'pages#index'

  resources :donations do
  end

  get "/pages/:page" => "pages#show"
  resources :pages, only: :show


end
