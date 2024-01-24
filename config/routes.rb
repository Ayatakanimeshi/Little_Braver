Rails.application.routes.draw do
  devise_for :users
  root 'top#index'
  resources :foods
  resources :bravers do
    member do
      get 'scenes/scene1', to: 'scenes#scene1'
      get 'scenes/scene2', to: 'scenes#scene2'
      get 'scenes/scene3', to: 'scenes#scene3'
      get 'scenes/scene4', to: 'scenes#scene4'
      get 'scenes/scene5', to: 'scenes#scene5'
      get 'scenes/scene6', to: 'scenes#scene6'
      get 'scenes/scene7', to: 'scenes#scene7'
      get 'scenes/scene8', to: 'scenes#scene8'
      get 'scenes/scene9', to: 'scenes#scene9'
      get 'scenes/scene10', to: 'scenes#scene10'
      post 'scenes/select_food', to: 'scenes#select_food', as: :select_food
    end
  end
end
