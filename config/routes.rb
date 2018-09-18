Rails.application.routes.draw do
<<<<<<< HEAD
  resources :service_accesses
  resources :professions
  resources :ubs
  resources :pacients
<<<<<<< HEAD
=======
>>>>>>> ab29c9b68fbad6eded5e3a81517b8584d06ffc86
  resources :attendances
  resources :prm_causes
  resources :attendances
  resources :pharmacotherapies
  resources :prms
<<<<<<< HEAD
  resources :diseases
=======
>>>>>>> 23ee98ffab22eea22a68e6768386e2e9e5198a86
=======
  resources :prm_causes
  resources :diseases
  resources :pharmacotherapies
  resources :attendances
  resources :service_accesses
  resources :professions
  resources :ubs
  resources :pacients
>>>>>>> ab29c9b68fbad6eded5e3a81517b8584d06ffc86
  resources :type_sexes
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
