Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"

  resources :records do
    resources :orders, only: [:new, :create]
  end

  resources :orders, only: [:show, :index, :destroy]

  devise_for :users,
  controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }


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

  root to: 'records#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
