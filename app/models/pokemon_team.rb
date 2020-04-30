class PokemonTeam < ApplicationRecord
    belongs_to :pokemon
    belongs_to :user_team
end
