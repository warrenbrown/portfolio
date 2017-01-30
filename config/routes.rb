Rails.application.routes.draw do
  devise_for :users
  resources :articles
  root 'home#index'

  get 'contact' => 'home#contact'
end
