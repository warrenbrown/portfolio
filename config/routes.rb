Rails.application.routes.draw do
  resources :articles
  root 'home#index'

  get 'contact' => 'home#contact'
end
