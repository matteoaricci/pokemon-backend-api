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

    def profile
        
    end


    private

    def user_params 
        params.require(:user).permit(:username, :trainer_name, :password_digest)
    end
end
