Rails.application.routes.draw do
  
  #get 'daily_dag_entrys/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


resources :farmer_details
resources :daily_dag_entrys

root to: "daily_dag_entrys#index"
 
end
