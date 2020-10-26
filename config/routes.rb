Rails.application.routes.draw do
  devise_for :users
  root to:'prototypes#index'
  #post '/users',   to: 'devise/registrations#create', as: 'users'
  resources :prototypes do
   resources :comments
  end
   resources :users
  
end
