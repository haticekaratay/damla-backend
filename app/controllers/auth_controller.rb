class AuthController < ApplicationController
    #This controller takes care of login
    def create
        user = User.find_by_username(params[:username])
        if user && user.authenticate(params[:password]) #Bcrypt
            token = encode_token({ user_id: user.id })  #Token from the application controller
            render json: {username: user.username, email: user.email, jwt: token}
        else
            render json: {error: 'Invalid username or password!'}, status: :unauthorized
        end
    end
        
    def show
        user = User.find_by(id: user_id)
        if user && logged_in?
          render json: {username: user.username, id: user.id, email: user.email}
        else
          render json: {error: 'User not foun'}, status: :unauthorized
        end
    end
end
