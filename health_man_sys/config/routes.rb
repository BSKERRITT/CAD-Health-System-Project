Rails.application.routes.draw do
  get 'records/index'

  get 'welcome/index'

  get 'doctors/index'

  resources :patients
  resources :doctors
  resources :records
  resources :doctors do
    resources :patients do
      resources :records
    end
  end
  root 'welcome#index'
end
