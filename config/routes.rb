Rails.application.routes.draw do
  devise_for :business_users, path: 'business_users', controllers: { sessions: "business_users/sessions", registrations: "business_users/registrations"}
  devise_for :users, path: 'users', controllers: { sessions: "users/sessions", registrations: "users/registrations" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#index'
end
