Rails.application.routes.draw do
  resources :products
  resources :orders, only: [:index, :show, :create, :destroy]
  get 'simple_pages/index'
  get 'simple_pages/about'
  get 'simple_pages/contact'
  post 'simple_pages/thank_you'
  root 'simple_pages#landing_page'
end
