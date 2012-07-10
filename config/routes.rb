PDC::Application.routes.draw do
  resources :exp_data_summaries

  resources :exp_paramaters

  resources :projects

  get "human/show_by_chr"

  get "pages/Admin"

  get "pages/Contact"

  get "pages/Explore"

  get "pages/Help"

  get "pages/Home"

  get "pages/Projects"

  get "pages/Result"

  get "pages/Search"

  get "pages/Upload"

  get "pages/User"

  match '/', :to => 'pages#Home'
  match '/contact', :to => 'pages#Contact'
  match '/explore', :to => 'pages#Explore'
  match '/help', :to => 'pages#Help'
  match '/home', :to => 'pages#Home'
  match '/human/show_by_chr', :to => 'human#show_by_chr'
  match '/human/show_by_proj', :to => 'human#show_by_proj'
  match '/proj', :to => 'pages#Projects'
  match '/search', :to => 'pages#Search'
  match '/signup', :to => 'users#new'
  match '/upload', :to => 'pages#Upload'
  match '/user', :to => 'pages#User'

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
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
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
  #       get 'recent', :on => :collection
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
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
