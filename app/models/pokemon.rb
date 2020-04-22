class Pokemon < ApplicationRecord
    has_many :pokemon_moves
    has_many :moves, through: :pokemon_moves
    has_many :pokemon_teams
    has_many :teams, through: :pokemon_teams
end
