Rails.application.routes.draw do
  
  root to: 'toppages#index'

   
 resources :plugins  #only: [:index, :show]
 resources :instruments #only: [:index, :show]
    # 以下は
    # namespace :admin do
    #     resources :plugins
    # end
end
