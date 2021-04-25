Rails.application.routes.draw do
  resources :profiles
  get 'sessions/start_test'
  
  get 'sessions/clear'
  
  get 'session/debug'
  
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/failure'

  get 'sessions/destroy'
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  get 'timesheets/landing', :as => :timesheets_landing
  root 'timesheets#landing'
   post '/auth/:provider/callback', to: 'sessions#create'

  match '/auth/:provider/callback', :to => 'sessions#create', :via => [:get, :post]
  match 'auth/failure', :to => 'sessions#failure', :via => [:get, :post]
  get 'sessions/destroy', :as => 'logout'
  get 'sessions/clear'
  get 'session/debug'

	resources :users, only: [:destroy] do
    resources :profiles, only: [:show, :edit, :update, :destroy]
  end

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
