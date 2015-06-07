Rails.application.routes.draw do
  resources :messages
  resources :users

  root 'home#index'

    get '/signin' => 'sessions#new'
    post '/signin' => 'sessions#create'
    get '/signout' => 'sessions#destroy'
    get '/secret_page' => 'home#secret_page'

end
