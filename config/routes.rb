Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  resources :orders
  resources :records


  namespace :admin do |variable|
    resources :orders, only: [:index]
    resources :records, only: [:index]
  end



  # get 'orders/crete'

  # get 'orders/index'

  # get 'orders/show'

  # get 'orders/delete'

  # get 'records/index'

  # get 'records/show'

  # get 'records/new'

  # get 'records/create'

  # get 'records/edit'

  # get 'records/update'

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
