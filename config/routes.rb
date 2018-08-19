Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout'}, controllers: { registrations: "user_registrations" }
  resources :users
  resources :products do
    resources :comments
  end
  resources :orders, only: [:index, :show, :create, :destroy]
  get 'simple_pages/index'
  get 'simple_pages/about'
  get 'simple_pages/contact'
  post 'simple_pages/thank_you'
  post 'payments/create'
  get 'payments/create'
  root 'simple_pages#landing_page'
end
