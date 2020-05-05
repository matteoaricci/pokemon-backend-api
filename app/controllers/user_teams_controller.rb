class UserTeamsController < ApplicationController
    def index
        teams = UserTeam.all 

        render json: teams
    end

    def create
        u_team = UserTeam.create(user_team_params)
        
        render json: u_team.id
    end

    def show
        user = User.find(params[:id])
        u_team = user.user_teams
        p_team = PokemonTeam.where(user_team_id: u_team.ids)
        # p_team.each { |pokemon| if pokemon.move1_id != 'null'
        #     pokemon[:move1] = Move.find_by(id: pokemon.move1_id)
        # end}
        render json: {team: u_team, pokemon_on_team: p_team}
    end

    private

    def user_team_params
        params.require(:user_team).permit(:user_id)
        # .permit(:pokemon_id, :hp_ev, :attack_ev, :defense_ev, :spattack_ev, :spdefense_ev, :speed_ev, :hp_iv, :attack_iv, :defense_iv, :spattack_iv, :spdefense_iv, :speed_iv, :move1_id, :move2_id, :move3_id, :move4_id))
    end
end
