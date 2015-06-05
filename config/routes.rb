Rails.application.routes.draw do

post '/rate' => 'rater#create', :as => 'rate'
# modify devise routes via controllers
devise_for :users, :controllers => { :registrations => "registrations", passwords: "passwords"  }

resources :posts
resources :profiles

resources :posts do
	resources :comments
end
  	
get "/profiles", to: "profiles#show"		
get "/main", to: "main#index"
  
root "main#index"


   
  
end
