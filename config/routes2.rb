Rails.application.routes.draw do

  resources :service_accesses
  resources :professions
  resources :ubs
  resources :pacients
  
  resources :attendances
  resources :prm_causes
  resources :pharmacotherapies
  resources :prms
  resources :diseases
  resources :type_sexes
  
end