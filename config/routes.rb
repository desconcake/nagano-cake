Rails.application.routes.draw do

  namespace :staffs do
    get 'orders/index'
    get 'orders/show'
  end
  namespace :staffs do
    get 'items/index'
    get 'items/show'
    get 'items/new'
    get 'items/edit'
  end
  namespace :staffs do
    get 'home/top'
  end
  namespace :staffs do
    get 'genres/index'
    get 'genres/edit'
  end
  namespace :staffs do
    get 'customers/index'
    get 'customers/show'
    get 'customers/edit'
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
  resources :orders, only:[ :index, :show, :new, :create ]
  get 'orders/check', to: 'orders#check'
  get 'orders/thanks', to: 'orders#thanks'
  resources :sub_addresses, only:[ :index, :show , :new, :create, :edit, :update ]

 #  namespace :admins do
 #    get 'top', to: 'home#top'
	#   resources :orders, only:[ :index, :show, :edit, :update ]
	#   resources :customers, only:[ :index, :show, :edit, :update ]
	#   resources :items, only:[ :index, :show, :new, :create, :edit, :update ]
	#   resources :genres, only:[ :index, :new, :create, :edit, :update ]
	# end
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end



