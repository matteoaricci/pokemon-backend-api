Rails.application.routes.draw do

  resources :rooms
  mount ActionCable.server => '/cable'

  resources :user_teams
  resources :pokemon_teams
  resources :pokemon_moves
  resources :users
  resources :pokemons
  resources :moves

  get '/pokemon/:id/moves', to: 'pokemons#moveset'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
