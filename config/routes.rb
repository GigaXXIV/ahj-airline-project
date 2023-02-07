Rails.application.routes.draw do
  resources :flights
  resources :users
  resources :planes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
