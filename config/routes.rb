Rails.application.routes.draw do

  root to: 'toppages#index'
 
   get 'profile',to: 'profiles#index'
   get 'select_plugin_kinds', to:'plugin_kinds#index'
   get 'select-instrument_kinds', to:'instrument_kinds#index'
 
resources :plugins  #, only: [:index, :show]
resources :instruments #, only: [:index, :show]
resources :plugin_kinds , only: [:index]
resources :instrument_kinds, only: [:index]
    # 以下は
    # namespace :admin do
    #     resources :plugins
    #     resources :instruments
    # end
end
