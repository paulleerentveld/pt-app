Rails.application.routes.draw do
  resources :workouts
  resources :exercises
  resources :clients
  resources :instructors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
