Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do 
    namespace :v1 do 
      resources :characters
      resources :users
      resources :likes, except: [:destroy]
      resources :scores
      post '/login', to: "auth#create"
      get "user", to: "auth#show"
      get "user/:id/likes", to: "likes#get_likes"
      get "user/:id/scores", to: "scores#get_scores"
      post "/likesdestroy", to: "likes#destroy"
    end
  end

end
