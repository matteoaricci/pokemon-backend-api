class PokemonTeamsController < ApplicationController
    def index 
        pokemon_teams = PokemonTeam.all 

        render json: pokemon_teams 
    end

    def create
        new_team = PokemonTeam.create(pokemon_teams_params)

        render json: new_team
    end

    def show
        pokemon_team = PokemonTeam.find(params[:id])
        
        render json: pokemon_team
    end

    private

    def pokemon_teams_params 
        params.require(:pokemon_team).permit(:pokemon_id, :user_team_id, :hp_ev, :attack_ev, :defense_ev, :spattack_ev, :spdefense_ev, :speed_ev, :hp_iv, :attack_iv, :defense_iv, :spattack_iv, :spdefense_iv, :speed_iv, :move1_id, :move2_id, :move3_id, :move4_id)
    end
end
