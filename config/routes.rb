Rails.application.routes.draw do
  devise_for :users
  resources :articles
  resources :projects
  resources :contacts , only: [ :new, :create ]
  root 'home#index'

  get 'contact' => 'home#contact'
end
