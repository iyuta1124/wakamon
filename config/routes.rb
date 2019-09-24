Rails.application.routes.draw do
  
  get 'topics/new'
  get 'sessions/new'
  root 'pages#top'
  
  get '/index', to: 'pages#index'
  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  resources :users
  resources :topics
  
  get 'search', to: 'topics#search'
  post "topics/:id/destroy" => "topics#destroy"
  
  get 'boards/index'
  get 'boards/show/:id' => 'boards#show', as: :boards_show
  post 'boards/create' => 'boards#create'
  delete 'boards/delete/:id' => 'boards#delete', as: :boards_delete
  
  get 'favorites/index'
  post '/favorites', to: 'favorites#create'
  delete '/favorites', to: 'favorites#destroy'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
