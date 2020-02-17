Rails.application.routes.draw do

  root to: 'home#top'
  devise_for :customers, controllers: {
        sessions: 'customers/sessions',
        registrations: 'customers/registrations'
      }

  get 'home/about', to: 'home#about'
  devise_for :admins, controllers: {
        sessions: 'admins/sessions',
        registrations: 'admins/registrations'
      }

  root to: 'home#top'
  get '/home/about', to: 'home#about'
  resources :customers, only:[ :edit, :show, :update, :destroy ]
  get '/customers/withdraw', to: 'customers#withdraw'
  resources :customers, only:[ :edit, :show, :update,:destroy ]
  resources :items, only:[ :index, :show ] do
  resources :cart_items, only: [ :index, :update, :create, :destroy ]
  end
  delete '/cart_items/', to: 'cart_items#clear' #カートアイテム全件削除
  get 'orders/thanks', to: 'orders#thanks'
  resources :orders, only:[ :index, :show, :new, :create ]
  post 'orders/check', to: 'orders#check'



  resources :sub_addresses, only:[ :index, :show , :new, :create, :edit, :update, :destroy ]

  namespace :admins do
    get 'top', to: 'home#top'
	  resources :orders, only:[ :index, :show, :edit, :update ]
	  resources :customers, only:[ :index, :show, :edit, :update ]
	  resources :items, only:[ :index, :show, :new, :create, :edit, :update ]
	  resources :genres, only:[ :index, :new, :create, :edit, :update ]
	end




  resources :sub_addresses
  resources :orders, only:[ :index, :show, :new ]


# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end


