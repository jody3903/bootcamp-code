Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # post "/cars", controller: "cars", action: "create"
  # get "/cars", controller: "cars", action: "index"
  # get "/cars/:make", controller: "cars", action: "index_for_make"
  root :to => 'home#index'
  resources :albums #index, show, edit, update, new, create, destroy
    resources :songs


resources :user

resources :messages

  post "/albums", controller: "albums", action: "create"
  get "/albums", controller: "albums", action: "index"
  get "/albums/:album_name", controller: "albums", action: "show"
  post "/albums/:album_name", controller: "songs", action: "create"
  # root :to => 'home#index'
  # resources :users do
  #   resources :comments
  # end
    resources :comments
    resources :users
  
  # post "/comments", controller: "users", action: "create"
  # get "/users", controller: "users", action: "index"
  # get "/users/:name", controller: "users", action: "show"


  resources :messages
  post "/chats", controller: "chats", action: "create"
  get "/chats", controller: "chats", action: "index"
  get "/chats/:topic", controller: "chats", action: "index_for_topic"
  # root :to => 'chats#index'
  #root :controller => "home". :action => "index"

end
