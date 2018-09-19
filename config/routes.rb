Rails.application.routes.draw do

  #resources :prms
  resources :service_accesses
  resources :professions
  resources :ubs
  resources :pacients
<<<<<<< HEAD
=======

  
    ###Rotas Atendimento
>>>>>>> 54ff9edea3d54451badb2a5bf1a8f7cde777015b
  resources :attendances
  resources :prm_causes
  resources :pharmacotherapies
  resources :prms
  resources :diseases
  resources :type_sexes
  
  get "/type_sexes" => redirect('https://gerfar-2-henriquebatista.c9users.io/type_sexes');
  get "/pacients" => redirect('https://gerfar-2-henriquebatista.c9users.io/pacients');
  get "/prm_causes" => redirect('https://gerfar-2-henriquebatista.c9users.io/prm_causes');
  get "/pr_ms" => redirect('https://gerfar-2-henriquebatista.c9users.io/pr_ms');
  get "/attendances" => redirect('https://gerfar-2-henriquebatista.c9users.io/attendances');
  
  
  
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
