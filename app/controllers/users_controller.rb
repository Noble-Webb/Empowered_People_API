class UsersController < ApplicationController
    require 'byebug' 
   
    def index
        users = User.all
        render json: users, include: :posts 
    end
    
    def show
       user = User.find(params[:id])
       render json: user, include: :posts
    end
    
    def create
        user = User.create(user_params)
        if user.valid?
            render json: { user: UserSerializer.new(user)}, status: :created
        else
            render json: {error: "Please enter another Username that one isn't available."}, status: :not_acceptable
        end
    end
    
    def update
        user = User.find(params[:id])

        user.assign_attributes(user_params)

        if user.valid?
            user.save
            render json: user
        else
            render json: user.errors.full_messages
        end
    end
    
    def destroy
        user = User.find(params[:id])
        user.destroy

        render json: {message: "Saying goodbye doesn't mean anything. It's the time we spent together that matters, not how we left it. - Trey Parker"}
    end

    private
    def user_params
        params.require(:user).permit( :username, :password, :profile_pic, :family, :map_suggestion)
    end
end
