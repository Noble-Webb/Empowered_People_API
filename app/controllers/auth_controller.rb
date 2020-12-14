class AuthController < ApplicationController
 
    def create
       user = User.find_by(username: params[:username])
   
       if user && user.authenticate(params[:password])
         payload = { user_id: user.id }
   
         token = JWT.encode(payload, 'my_secret', 'HS256')
   
         # create a jwt
   
         render json: { user: {id: user.id, username: user.username, }, token: token }
       else
         render json: { error: 'Invalid username/password.' }, status: 401
       end 
     end
   
     def show
       token = request.headers[:Authorization].split(' ')[1]
         decoded_token = JWT.decode(token, 'my_secret' , true, { algorithm: 'HS256' })
         user_id = decoded_token[0]['user_id']
         user = User.find(user_id)
         render json: { user: {id: user.id, username: user.username} }
     end
   
   end