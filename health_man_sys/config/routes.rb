Rails.application.routes.draw do

  get 'appointments/index'

  get 'welcome/index'

  get 'patient/index'

  get 'doctors/index'

  get 'records/index'

  resources :patients, :doctors, :records, :appointments

  resources :patients do
    resources :appointments
  end

  resources :doctors do
    resources :patients
  end

  resources :patients do
    resources :records
  end

  resources :doctors do
    resources :records
  end

  root 'welcome#index'
end
