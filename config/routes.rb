Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/create'
  resources :dishes
  resources :restaurants
  resources :reviews

  devise_for :users
  get 'home/Index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"  
  root to: "home#Index" 
  
end
