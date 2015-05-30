Rails.application.routes.draw do

  # Routes for the Location resource:
  # CREATE
  get "/locations/new", :controller => "locations", :action => "new"
  post "/create_location", :controller => "locations", :action => "create"

  # READ
  get "/locations", :controller => "locations", :action => "index"
  get "/locations/:id", :controller => "locations", :action => "show"

  # UPDATE
  get "/locations/:id/edit", :controller => "locations", :action => "edit"
  post "/update_location/:id", :controller => "locations", :action => "update"

  # DELETE
  get "/delete_location/:id", :controller => "locations", :action => "destroy"
  #------------------------------

  # Routes for the Day resource:
  # CREATE
  get "/days/new", :controller => "days", :action => "new"
  post "/create_day", :controller => "days", :action => "create"

  # READ
  get "/days", :controller => "days", :action => "index"
  get "/days/:id", :controller => "days", :action => "show"

  # UPDATE
  get "/days/:id/edit", :controller => "days", :action => "edit"
  post "/update_day/:id", :controller => "days", :action => "update"

  # DELETE
  get "/delete_day/:id", :controller => "days", :action => "destroy"
  #------------------------------

  # Routes for the Itinerary resource:
  # CREATE
  get "/itineraries/new", :controller => "itineraries", :action => "new"
  post "/create_itinerary", :controller => "itineraries", :action => "create"

  # READ
  get "/itineraries", :controller => "itineraries", :action => "index"
  get "/itineraries/:id", :controller => "itineraries", :action => "show"

  # UPDATE
  get "/itineraries/:id/edit", :controller => "itineraries", :action => "edit"
  post "/update_itinerary/:id", :controller => "itineraries", :action => "update"

  # DELETE
  get "/delete_itinerary/:id", :controller => "itineraries", :action => "destroy"
  #------------------------------

  devise_for :users
  root "itineraries#index"

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

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
