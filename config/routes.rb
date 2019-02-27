Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do 
    namespace :v1 do 
      resources :characters
      resources :users
      resources :likes 
      resources :score
      resources :favorites
      post '/login', to: "auth#create"
      get "user", to: "auth#show"
    end
  end

end
