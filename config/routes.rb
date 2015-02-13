Rails.application.routes.draw do
  resources :messages

  root 'home#index'

  get '/test' => 'home#test'
end
