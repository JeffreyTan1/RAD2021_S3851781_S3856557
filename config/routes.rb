Rails.application.routes.draw do
  
  resources :bypass_password_instances
  resources :bags
  resources :saved_lists
  get 'session/new', to: 'sessions#new'
  post 'session/new', to: 'sessions#create'
  get 'session/new/:key', to: 'sessions#bypass_password'
  get 'session/twitter/:id', to: 'sessions#createTwitterSession', as: 'twitter_session'
  delete 'session', to: 'sessions#destroy'
  
  get '/session/forgot_password', to: 'sessions#show_forgot_password', as: 'forgot_password_session'
  post '/session/forgot_password', to: 'sessions#forgot_password'
  
  get 'items/:id', to: 'items#show', as: 'show_item'
  get 'get_image/:id', to: 'items#getImage', as: 'get_image'


  get '/search' => 'pages#search', :as => 'search_page'
  post '/profile' => 'profile#profilepageEmail', :as => 'profilepage'
  get '/profile' => 'profile#profilepage'
  
  
  post '/newsletter' => 'mailtest#mailtest', :as => 'mailtestPOST'
  get '/newsletter' => 'mailtest#mailtest', :as => 'mailtest'

  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :items
  resources :users, only: %i[new create]
  resources :session, only: %i[new create destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :items
  
  

  root 'homepage#show'
  get '/collection/:col', to: 'pages#collections', as: 'show_collections'
  get '/collection/:col/:fil', to: 'pages#collections', as: 'show_filtered'
  
  get '/HelpAndSupport', to: 'homepage#helpAndSupp', as: 'help_and_support'
 
  post '/toBag/:id', to: 'bag_items#addToList', as: 'add_to_bag'
  post '/removeB/:id', to: 'bag_items#removeFromList', as: 'remv_from_bag'
  
  
  post '/addOrRemoveFromSL/:id', to:'saved_lists#toggleList', as: 'toggle_item_saved_list'
  
  post '/checkout/:id', to: 'bags#checkout', as: 'checkout_bag'
  
  get '/saved_list/:id', to: 'saved_lists#show', as: 'show_user_saved_list'
  get '/bag/:id', to: 'bags#show', as: 'show_user_bag'
  
  get "/auth/twitter/callback", to: "omniauth_callbacks#twitter"
  
  
  resources :bag_items
end
