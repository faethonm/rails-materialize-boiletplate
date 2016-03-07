Rails.application.routes.draw do
  devise_for :users
  resources :permutators
  root 'home#index'
  get 'contact' => 'home#contact'
end
