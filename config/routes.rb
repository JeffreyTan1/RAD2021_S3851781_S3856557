Rails.application.routes.draw do

  get 'search/searchpage'
  get '/search' => 'pages#search', :as => 'search_page'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :items
  
  root 'homepage#show'
  
end
