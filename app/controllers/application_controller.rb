class ApplicationController < ActionController::API
    #  before_action :authorized
    
    #let's issue a token
    def encode_token(payload)
        JWT.encode(payload, ENV['JWT_KEY'])
    end
    
    def auth_header
        # { 'Authorization': 'Bearer <token>' }
        request.headers['Authorization']
    end
    
    def decoded_token
        if auth_header
        #token = auth_header.split(' ')[1]
        token = auth_header
        begin
            JWT.decode(token, ENV['JWT_KEY'], true, algorithm: 'HS256')
        rescue JWT::DecodeError  # if our server receives a bad token, instead of crashing our server, we simply return nil.
            nil
        end
        end
    end
    
    def current_user
        if decoded_token
        # decoded_token=> [{"user_id"=>1}, {"alg"=>"HS256"}]
        user_id = decoded_token[0]['user_id'] 
        #byebug
        @user = User.find_by(id: user_id)
        end
    end
    
    def logged_in?
        !!current_user
    end
    
    def authorized
        render json: { message: 'Unauthorized. Please log in' }, status: :unauthorized unless logged_in?
    end
end
