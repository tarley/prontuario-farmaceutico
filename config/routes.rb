Rails.application.routes.draw do
  root 'sessions#new'

  get 'sessions/new'

  resources :users
  
  get    'sign_in'   => 'sessions#new'
  post   'sign_in'   => 'sessions#create'
  delete 'sign_out'  => 'sessions#destroy'

  #resources :prms
  resources :service_accesses
  resources :professions
  resources :ubs
  resources :pacients


  
    ###Rotas Atendimento
  resources :attendances
  resources :prm_causes
  resources :pharmacotherapies
  resources :prms
  resources :diseases
  resources :type_sexes
  
  get "/type_sexes" => redirect('https://gerfar-2-henriquebatista.c9users.io/type_sexes');
  get "/pacients" => redirect('https://gerfar-2-henriquebatista.c9users.io/pacients');
  get "/prm_causes" => redirect('https://gerfar-2-henriquebatista.c9users.io/prm_causes');
  get "/prms" => redirect('https://gerfar-2-henriquebatista.c9users.io/prms');
  get "/attendances" => redirect('https://gerfar-2-henriquebatista.c9users.io/attendances');
  
  resources :treatments
  resources :sfcs
  resources :care_plans
  
  
end