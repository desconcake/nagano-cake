Rails.application.routes.draw do

  get '/customers/withdraw', to: 'customers#withdraw'

  namespace :staffs do
     root to: 'home#top'
     #put 'orders/item/:id', to:'orders#item_update', as:'order_item'
     patch 'orders/item/:id', to:'orders#item_update', as:'order_item'
     get 'orders/customers/:id', to:'orders#index', as: 'orders_search'
     resources :orders, only:[ :index, :show, :edit, :update ]


     resources :customers, only:[ :index, :show, :edit, :update, :destroy ]
     resources :items, only:[ :index, :show, :new, :create, :edit, :update ]
     resources :genres, only:[ :index, :new, :create, :edit, :update ]
   end

  devise_for :staffs, controllers: {
        sessions: 'staffs/sessions',
        registrations: 'staffs/registrations'
      }

  root to: 'home#top'
  devise_for :customers, controllers: {
        sessions: 'customers/sessions',
        registrations: 'customers/registrations'
      }


  root to: 'home#top'
  get '/home/about', to: 'home#about'
  resources :customers, only:[ :edit, :show, :update, :destroy ]
  resources :customers, only:[ :edit, :show, :update,:destroy ]
  resources :items, only:[ :index, :show ] do
  resources :cart_items, only: [ :index, :update, :create, :destroy ]
  end
  get 'orders/check', to: 'orders#check'
  get 'orders/thanks', to: 'orders#thanks'
  delete '/cart_items/', to: 'cart_items#clear' #カートアイテム全件削除
  resources :orders, only:[ :index, :new, :create, :show ]
  post 'orders/check', to: 'orders#check'




  resources :sub_addresses, only:[ :index, :show , :new, :create, :edit, :update, :destroy ]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end




