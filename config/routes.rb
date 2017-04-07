Rails.application.routes.draw do
  resources :galleries do
    resources :catalogues, only: :show
  end

  resources :catalogues, except: :show

  resources :works

  root to: 'visitors#index'
  devise_for :users
  get 'about' => 'visitors#about'
  get 'contact' => 'visitors#contact'
end
