Rails.application.routes.draw do
<<<<<<< HEAD
  resources :jobseekers

  resources :employers

  resources :jobs
  root :to => "home#index"
  resources :admins
   get 'login'=>'home#login'
   post 'login_check'=> 'home#login_check'
=begin
  get 'invalid_credential'=> 'home#invalid_credentails'
=end
=======

  resources :jobapplications

  resources :jobseekers

  resources :employers

  resources :jobs
  root :to => 'jobs#index'
  resources :admins
  get 'login'=>'home#login'
  post 'login_check'=> 'home#login_check'
  get 'logout' => 'home#logout'
  get 'jobapplication_lists'=>'jobapplications#list_applications'
  get '/search'=> 'jobs#search'
  match '*a', :to => 'errors#routing', via: :get

>>>>>>> v1.10
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
