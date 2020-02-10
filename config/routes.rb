Rails.application.routes.draw do

  get 'cart_items/index'
  get 'cart_items/ create'
  get 'cart_items/update'
  get 'cart_items/destroy'
  get 'cart_items/clear'
  devise_for :admins
  devise_for :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'home#top'
  get 'home/about'
  resources :customers, only:[ :edit, :show, :update ]
  get 'customers/withdraw'
  resources :cart_items, only: [ :index, :update, :create, :destroy, :clear ]
  resources :orders, only:[ :index, :show, :new ]
  get 'orders/check'
  get 'orders/thanks'
  resources :sub_addresses, only:[ :index, :show , :new, :create, :edit ]

  namespace :admin do
	  get 'home/top'
	  resources :orders, only:[ :index, :show, :edit, :update ]
	  resources :customers, only:[ :index, :show, :edit, :update ]
	  resources :items, only:[ :index, :show, :new, :create, :edit, :update ]
	  resources :genres, only:[ :index, :new, :create, :edit, :update ]
	end
end

