Rails.application.routes.draw do
  root 'sessions#new' #rota pradrão
  
  get :search, controller: :pacients
  #root to: "pacients#new"

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
  resources :treatments
  resources :sfcs
  resources :care_plans
  resources :home 
  
end