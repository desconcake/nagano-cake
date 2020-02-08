Rails.application.routes.draw do
  get 'customers/withdraw'
	resource :custmers

  namespace :admins do
    resources 'genres/index'
    resources 'genres/edit'
  end
  namespace :admins do
    root 'home#top'
  end
  devise_for :admins
  devise_for :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
