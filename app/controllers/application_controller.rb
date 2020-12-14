class ApplicationController < ActionController::API
    def issue_token(user)
        JWT.encode({user_id: user.id}, ENV['my_secret'], "HS256")
    end 
   
    def current_user
        @user ||= User.find_by(id: user_id)
    end 
   
    def token 
        request.headers['Authorization']
    end 
   
    def decoded_token 
        begin
            JWT.decode(token, ENV['my_secret'], true, { :algorithm => "HS256" })
        rescue  JWT::DecodeError 
            [{}]
        end 
    end 
    def user_id
        decoded_token.first['user_id']
    end 
    def logged_in?
        !!current_user 
    end 
    def authorized
        render json: { message: 'please sign up or log in' }, status: :authorized unless logged_in?
    end 
end
