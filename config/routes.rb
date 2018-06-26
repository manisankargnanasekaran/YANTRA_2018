Rails.application.routes.draw do
  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      post 'auth/register', to: 'sessions#register'
      post 'auth/login', to: 'sessions#login'
      get 'test', to: 'sessions#test'
      get 'start_end_time', to: 'sessions#start_end_time'
	    get 'sessions/test'
	    get 'sessions/logout'
      
      resources :operator_allocations
      resources :operators
      resources :ethernet_logs
      resources :connection_logs
      resources :alarms
      resources :machines
      resources :shifttransactions
      resources :shifts
	    resources :users
	    resources :tenants
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
