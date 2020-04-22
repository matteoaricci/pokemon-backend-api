class User < ApplicationRecord
    has_many :user_teams
    has_many :pokemon_teams, through: :user_teams
end
