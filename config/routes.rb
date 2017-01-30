Rails.application.routes.draw do
  devise_for :users
  resources :articles
  resources :projects
  root 'home#index'

  get 'contact' => 'home#contact'
end
