Rails.application.routes.draw do

# modify devise routes via controllers
devise_for :users, :controllers => { :registrations => "registrations", passwords: "passwords"  }


  resources :posts 
  
  get "/main", to: "main#index"
  root "main#index"

  
end
