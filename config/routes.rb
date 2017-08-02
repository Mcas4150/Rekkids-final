Rails.application.routes.draw do


  # get 'rec/:id' => 'tests#show', :constraints  => {:id => /.+\.\w{3,4}/}

  resources :records do
    collection do
      get :whoami
      get :inventory
      get :index
      get :marketplace
      get :show

      end
    end

  mount Attachinary::Engine => "/attachinary"




  resources :records do
    resources :orders, only: [:new, :create]

  end


  resources :orders, only: [:show, :index, :create, :destroy] do
  resources :payments, only: [:new, :create]
end

  devise_for :users,
  controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }



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
