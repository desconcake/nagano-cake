Rails.application.routes.draw do

  namespace :admin do
	  get 'home/top'
	  resources :orders, only:[ :index, :show, :edit, :update ]
	  resources :customers, only:[ :index, :show, :edit, :update ]
	  resources :items, only:[ :index, :show, :new, :create, :edit, :update ]
	  resources :genres, only:[ :index, :new, :create, :edit, :update ]
end

  resources :sub_addresses, only:[ :index, :show ]
  resources :orders, only:[ :index, :show, :new ]
  get 'orders/check'
  get 'orders/thanks'
  devise_for :admins
  devise_for :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
