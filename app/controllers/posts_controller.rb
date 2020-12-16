class PostsController < ApplicationController
    skip_before_action :authorized
    
    def index
        posts = Post.all 
        render json: posts
    end
    
    def show
       post = Post.find(params[:id])
       render json: post 
    end
    
    def create
        post = Post.new(post_params)

        if post.save
            render json: post
        else
            render json: post.errors.full_messages, status: 401
        end
    end
    
    def update
        post = Post.find(params[:id])
        
        #assigns new attributes to post  
        post.assign_attributes(post_params)
        
        #checks for validation errors
        if post.valid?      
            #saves the assigned updates to the database
            post.save
            render json: post
        else
            render json: post.errors.full_messages
        end  
    end
    
    def destroy
        post = Post.find(params[:id])
        post.destroy 

        render json: {error: "Alright, you can breathe easy now. The post was deleted."}
    end

    def post_params
        params.require(:post).permit(:author, :title, :content, :upvote, :user_id)
    end 