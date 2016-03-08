Rails.application.routes.draw do
  resources :search, only: 'index'

  # get 'plugins/index'
  resources :plugins, only: :index
  resources :announcements do
    resources :announcement_comments
    resources :announcement_attachments
  end
  get 'dashboard/index'

  resources :calendar_events
  resources :calendar, only: [:index]
  use_doorkeeper
  # News module
  # resources :comments

  # Recruitments module
  resources :recruitments do
  end

  # Employee module
  resources :departments
  resources :teams
  resources :employees do
    collection do
      get :autocomplete
    end
    member do
      patch :change_manager
    end
  end
  # User module
  # match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }
  resource :user, only: [:edit] do
    collection do
      patch :update_password
      get :manage_roles
      post :manage_roles
    end
    member do
      get :manage_roles_user
    end
  end
  resources :profile do
    collection do
      get :account
      get :preferences
      get :notifications
      get :audit_log
      delete :unlink
    end
  end
  # Messaging module
  resources :conversations, only: [:index, :show, :destroy] do
    member do
      post :reply
      post :restore
      post :mark_as_read
    end
    collection do
      delete :empty_trash
    end
  end
  resources :messages, only: [:new, :create, :index]
  # Notification module
  resources :notifications # FIXME remove unwanted routes
  mount Searchjoy::Engine, at: 'admin/searchjoy'

  root 'dashboard#index'
  namespace :api, defaults: { format: :json } do
    scope module: :v1 do
      resources :users
      get '/me' => "credentials#me"
    end
  end

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
