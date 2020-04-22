class PokemonMovesController < ApplicationController
    def index
        pokemon_moves = PokemonMove.all 
        
        render json: pokemon_moves
    end
end
