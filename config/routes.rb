Rails.application.routes.draw do
  resources :user_teams
  resources :pokemon_teams
  resources :pokemon_moves
  resources :users
  resources :pokemons
  resources :moves
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
