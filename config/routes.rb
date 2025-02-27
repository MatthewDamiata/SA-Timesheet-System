Rails.application.routes.draw do
  resources :profiles


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".





  match '/auth/:provider/callback', :to => 'sessions#create', :via => [:get, :post]
  match 'auth/failure', :to => 'sessions#failure', :via => [:get, :post]

  get 'sessions/clear'
  get 'session/debug'
  match 'sessions/destroy', :as => 'logout', :via => [:get, :post]
	resources :users, only: [:destroy] do
    resources :profiles, only: [:show, :edit, :update, :destroy]
  end

	resources :timetables do

	end
	get 'timesheets/landing', :as => :timesheets_landing
  root 'timesheets#landing'

  match 'timetables/admin', :as => 'timetables_admin', :via => [:get, :post]
  match 'timetables/admin/:id', :as => 'timetables_user', :to => 'timetables#user', :via => [:get, :post]
  match 'timetables/admin/:id/new', :as => 'user_new_timetable', :to => 'timetables#user_new', :via => [:get, :post]
  match 'timetables/admin/:id/:table_id', :as => 'timetables_user_edit', :to => 'timetables#user_edit', :via => [:get, :post]
  delete 'timetables/admin/:id/:table_id', :to => 'timetables#user_destroy'
  match 'timetables/admin_archive', :as => 'timetables_admin_archive', :via => [:get, :post]
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
