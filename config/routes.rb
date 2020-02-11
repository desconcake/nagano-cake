Rails.application.routes.draw do

  root to: 'home#top'
  devise_for :customers, controllers: {
        sessions: 'customers/sessions',
        registrations: 'customers/registrations'
      }
  get 'home/about', to: 'home#about'
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/customers/withdraw', to: 'customers#withdraw'
  resources :customers, only:[ :edit, :show, :update ]
  resources :items, only:[ :index, :show ]
  resources :cart_items, only: [ :index, :update, :create, :destroy ]
  delete '/cart_items/', to: 'cart_items#clear' #カートアイテム全件削除
  resources :orders, only:[ :index, :show, :new, :create ]
  get 'orders/check', to: 'orders#check'
  get 'orders/thanks', to: 'orders#thanks'
  resources :sub_addresses, only:[ :index, :show , :new, :create, :edit, :update ]

  namespace :admins do
	  get '/home/top', to: 'home#top'
	  resources :orders, only:[ :index, :show, :edit, :update ]
	  resources :customers, only:[ :index, :show, :edit, :update ]
	  resources :items, only:[ :index, :show, :new, :create, :edit, :update ]
	  resources :genres, only:[ :index, :new, :create, :edit, :update ]
	end

end

