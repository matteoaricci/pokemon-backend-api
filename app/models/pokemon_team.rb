class PokemonTeam < ApplicationRecord
    belongs_to :pokemon
    belongs_to :user_team
    belongs_to :user, through: :user_team
end
