Rails.application.routes.draw do
  devise_for :users
  root 'top#index'
  resources :foods
  resources :bravers
  
  post 'scenes/:scene_id/select_food', to: 'scenes#select_food', as: :select_food_scene

  get 'scenes/scene1', to: 'scenes#scene1'
  get 'scenes/scene2', to: 'scenes#scene2'
  get 'scenes/scene3', to: 'scenes#scene3'
end
