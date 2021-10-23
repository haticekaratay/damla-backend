class UsersController < ApplicationController

    def create
        user = User.create(user_params)
        # byebug
        if user.valid?
            token = encode_token({ user_id: user.id })
            render json: {username: user.username, email: user.email, jwt:token}
            #render json: { user: UserSerializer.new(user), jwt: token }, status: :created
        else
            # render json: { error: "Fail to create user" }, status: :unauthorized #status: :unprocessable_entity
            render json: { error: user.errors.full_messages, message: "Try again."}#, status: :unauthorized #status: :unprocessable_entity
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
        # byebug
        params.permit(:username, :email, :password) 
    end
end
