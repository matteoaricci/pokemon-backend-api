class UserTeam < ApplicationRecord
    belongs_to :user 
    has_many :pokemon_teams
    has_many :pokemons, through: :pokemon_teams
end
