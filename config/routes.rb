Rails.application.routes.draw do
  
  resources :saved_lists
  get 'session/new', to: 'sessions#new'
  post 'session/new', to: 'sessions#create'
  delete 'session', to: 'sessions#destroy'



  get 'search/searchpage'
  get '/search' => 'pages#search', :as => 'search_page'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :items
  resources :users, only: %i[new create]
  resources :session, only: %i[new create destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :items
  
  root 'homepage#show'
  get '/:col', to: 'homepage#show'
  post '/save/:id', to: 'saved_lists#addToList'
  
  get '/saved_list/:id', to: 'saved_lists#show'
  
end
