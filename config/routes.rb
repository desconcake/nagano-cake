Rails.application.routes.draw do

  devise_for :admins
  devise_for :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'customers/withdraw'
	resource :custmers

  namespace :admins do
  resources :genres, only:[ :index, :edit]
  end
  namespace :admins do
  root 'home#top'
  end


  namespace :admin do

  resources :orders, only:[ :index, :show ]

end

  resources :sub_addresses, only:[ :index, :show ]
  resources :orders, only:[ :index, :show, :new ]
  get 'orders/check'
  get 'orders/thanks'

end
