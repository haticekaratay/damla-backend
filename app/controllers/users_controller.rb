class UsersController < ApplicationController

    def create
        user = User.create(user_params)
        if user.valid?
            token = encode_token({ user_id: user.id })
            render json: {username: user.username, email: user.email, jwt:token}
        else
            render json: { error: user.errors.full_messages, message: "Try again."}
        end
    end


    def show
        user = User.find_by_id(params[:id])
        if user
            render json: user, only: [:id, :username, :email]
        else
            render json: { error: "User not found" }
        end
    end


    
    private
    
    def user_params
        params.permit(:username, :email, :password) 
    end
end
