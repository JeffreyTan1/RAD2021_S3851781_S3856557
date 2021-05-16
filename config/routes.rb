Rails.application.routes.draw do
  
  resources :saved_lists
  get 'session/new', to: 'sessions#new'
  post 'session/new', to: 'sessions#create'
  delete 'session', to: 'sessions#destroy'



  get '/search' => 'pages#search', :as => 'search_page'
  post '/test' => 'mailtest#mailtest', :as => 'mailtestPOST'
  get '/test' => 'mailtest#mailtest', :as => 'mailtest'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :items
  resources :users, only: %i[new create]
  resources :session, only: %i[new create destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :items
  
  root 'homepage#show'
  get '/:col', to: 'homepage#show'
  post '/', to: 'homepage#addToList'
  
end
