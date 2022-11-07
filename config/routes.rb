
Rails.application.routes.draw do
  get 'lessons/index'
  devise_for :users
  resources :courses
  resources :lessons
end
