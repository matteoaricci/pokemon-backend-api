class PokemonsController < ApplicationController
    def index
        pokemons = Pokemon.all

        render json: pokemons
    end

    def moveset
        pokemon = Pokemon.find(params[:id])
        poke_moveset = pokemon.moves
        render json: poke_moveset
    end
end
