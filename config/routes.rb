Rails.application.routes.draw do

  # WebSocket Routes
  mount ActionCable.server => '/cable'
  resources :rooms

  #Auth Routes
  resources :sessions, only: [:create]
  resources :registrations
  delete :logout, to: 'sessions#logout'
  get :logged_in, to: 'sessions#logged_in'

  resources :user_teams
  resources :pokemon_teams
  resources :pokemon_moves
  resources :users
    get 'users/:id/teams', to: 'users#show_teams'
  resources :pokemons
  resources :moves

  get '/pokemon/:id/moves', to: 'pokemons#moveset'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
