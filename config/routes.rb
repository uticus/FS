Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :faces
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
  	  namespace :v4 do
  	      resources :faces

  	      get 'face/analyze' => 'faces#analyze'

  	      resources :sessions, only: :create
      end
  end

  
end
