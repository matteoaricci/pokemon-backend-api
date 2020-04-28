class AuthController < ApplicationController
    def create
        user = User.find_by(username: params["username"])
        if user && user.authenticate(params["password"])
            payload = {user_id: user.id}
            render json : {
                user: user,
                error: false 
            } else 
                render json: {
                    error: true
                    message: "Invalid Username or Password"
                }
            end
    end
end
