Rails.application.routes.draw do

  devise_for :admins
  devise_for :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :items, only: [:index, :show]

  root 'home#top'
  get 'home/about'
  resources :sub_addresses, only:[ :index, :show ]
  resources :orders, only:[ :index, :show, :new ]
  get 'orders/check'
  get 'orders/thanks'

  resources :customers, only:[ :edit, :show, :update ]
  get 'customers/withdraw'
  resources :cart_items, only: [ :index, :update, :create, :destroy, :clear ]

  namespace :admin do
	  get 'home/top'
	  resources :orders, only:[ :index, :show, :edit, :update ]
	  resources :customers, only:[ :index, :show, :edit, :update ]
	  resources :items, only:[ :index, :show, :new, :create, :edit, :update ]
	  resources :genres, only:[ :index, :new, :create, :edit, :update ]
	end

end


