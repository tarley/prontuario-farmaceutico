Rails.application.routes.draw do
  resources :diseases
  resources :names
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
  resources :type_sexes
  resources :treatments
  resources :sfcs
  resources :care_plans
  
  
end