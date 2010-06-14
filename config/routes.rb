Syndicate::Application.routes.draw do |map|
  resources :station_types, :only => [:index, :show]
  resources :stations, :only => [:index, :show]
  resources :landmarks, :only => [:index, :show]
  resources :celestial_statistics, :only => [:index, :show]
  resources :inventory_types, :only => [:index, :show]
  resources :type_reactions, :only => [:index, :show]
  resources :type_materials, :only => [:index, :show]
  resources :meta_types, :only => [:index, :show]
  resources :meta_groups, :only => [:index, :show]
  resources :market_groups, :only => [:index, :show]
  resources :inventory_flags, :only => [:index, :show]
  resources :inventory_categories, :only => [:index, :show]
  resources :eve_units, :only => [:index, :show]
  resources :eve_names, :only => [:index, :show]
  resources :graphics, :only => [:index, :show]
  resources :races, :only => [:index, :show]
  resources :bloodlines, :only => [:index, :show]
  resources :character_attributes, :only => [:index, :show]
  resources :ancestries, :only => [:index, :show]
  # resources :research_agents, :only => [:index, :show]
  resources :agent_configs, :only => [:index, :show]
  resources :agents, :only => [:index, :show]
  resources :agent_types, :only => [:index, :show]
  resources :groups, :only => [:index, :show]
  resources :universes, :only => [:index, :show]
  resources :admins, :only => [:index, :show, :edit, :update]
  resources :regions, :only => [:index, :show]
  resources :constellations, :only => [:index, :show]
  resources :systems, :only => [:index, :show]
  resources :factions, :only => [:index, :show]
  
  devise_for :users, :admins
  resources :users

  # match 'contraband_types/:faction_id,:type_id' => 'contraband_types#show'
  # match 'contraband_types' => 'contraband_types#ndex'
  
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get :short
  #       post :toggle
  #     end
  #
  #     collection do
  #       get :sold
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get :recent, :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
