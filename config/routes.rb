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
<<<<<<< HEAD
=======


  
    ###Rotas Atendimento
>>>>>>> a23ab73239c5173a6c03210da0abf78218329f84
  resources :attendances
  resources :prm_causes
  resources :pharmacotherapies
  resources :prms
  resources :diseases
  resources :type_sexes
  resources :treatments
  resources :sfcs
  resources :care_plans
  
end