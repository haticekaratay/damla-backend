Rails.application.routes.draw do
  
  resources :expenses
  resources :incomes
  resources :users 

  post "/login" => "auth#create"
  get "/get_current_user" => "auth#get_current_user"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
