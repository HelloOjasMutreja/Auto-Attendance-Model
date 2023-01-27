Rails.application.routes.draw do
  resources :attendances
  resources :students
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "attendances#index"
end
