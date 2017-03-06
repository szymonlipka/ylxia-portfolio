Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  get 'about' => 'visitors#about'
  get 'contact' => 'visitors#contact'
end
