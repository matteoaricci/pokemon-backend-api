class UsersController < ApplicationController
    def index 
        users = User.all

        render json: users
    end

    def create
        user = User.new(user_params)
        if user.valid?
            user.save
        end
    end

    def show
        user = User.find(params[:id])

        render json: user
    end

    def show_teams
        user = User.find(params[:id])
        user_teams = user.user_teams
        render json: user_teams, include: :pokemons
    end


    private

    def user_params 
        params.require(:user).permit(:username, :trainer_name, :password_digest)
    end
end
