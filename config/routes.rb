Rails.application.routes.draw do
  
  resources :bags
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
  
  post '/toSList/:id', to: 'saved_lists#addToList', as: 'add_to_saved_list'
  post '/toBag/:id', to: 'bags#addToList', as: 'add_to_bag'
  
  post '/removeSL/:id', to: 'saved_lists#removeFromList', as: 'remv_from_saved_list'
  post '/removeB/:id', to: 'bags#removeFromList', as: 'remv_from_bag'
  
  post '/checkout/:id', to: 'bags#checkout', as: 'checkout_bag'
  
  get '/saved_list/:id', to: 'saved_lists#show', as: 'show_user_saved_list'
  get '/bag/:id', to: 'bags#show', as: 'show_user_bag'
  
end
