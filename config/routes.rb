Rails.application.routes.draw do
  root to: "restaurants#index"
  
  resources :restaurants do 
    resources :reviews
  end
  
 
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
end


