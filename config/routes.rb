Rails.application.routes.draw do

  resources :email_sign_ups
  root to: 'welcome#index'

  get 'welcome/index'
  get 'welcome/about'
  get 'welcome/shop'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
