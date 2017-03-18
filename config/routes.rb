Rails.application.routes.draw do
  resources :galleries
  resources :catalogues
  resources :works

  root to: 'visitors#index'
  devise_for :users
  get 'about' => 'visitors#about'
  get 'contact' => 'visitors#contact'
end
