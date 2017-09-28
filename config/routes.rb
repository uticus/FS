Rails.application.routes.draw do
  resources :faces
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :admin do
  	resources :users
  end

#  namespace :api do
#  	  namespace :v4 do
#  	      resources :faces
#      end
#  end
end
