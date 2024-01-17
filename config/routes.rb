Rails.application.routes.draw do
  devise_for :users

  root 'top#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :foods
  
  post 'scenes/:scene_id/select_food', to: 'scenes#select_food', as: :select_food_scene

  get 'scenes/scene1', to: 'scenes#scene1'
  get 'scenes/scene2', to: 'scenes#scene2'
  get 'scenes/scene3', tZZZo: 'scenes#scene3'
end
