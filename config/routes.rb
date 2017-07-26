Rails.application.routes.draw do


  ActiveAdmin.routes(self)
  # get 'rec/:id' => 'tests#show', :constraints  => {:id => /.+\.\w{3,4}/}

  resources :records do
    collection do
      get :authenticate
      get :callback
      get :whoami
      end
     resources :orders, only: [:new, :create, :show, :index]

    end

  mount Attachinary::Engine => "/attachinary"





  resources :orders, only: [:show, :index, :create, :destroy] do
  resources :payments, only: [:new, :create]
end

  devise_for :users,
  controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }


  namespace :admin do |variable|
    resources :orders, only: [:index]
    resources :records, only: [:index]
  end

  get 'pages/aboutus'

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
