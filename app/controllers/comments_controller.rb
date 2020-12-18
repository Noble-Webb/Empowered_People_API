class CommentsController < ApplicationController
    

    def index
        comments = Comment.all
    
        render json: comments
      end

    def show
        comment = Comment.find(params[:id])
        render json: comment
    end

    def create
        comment = Comment.new(comment_params)
        if comment.save
            render json: comment
        else
            render json: {errors: "Grrrrrr!! There was an issue with your comment, please try again."}, status: 401
        end
    end
    
    def destroy
        comment = Comment.find(params[:id])
        
        comment.destroy
        render json: {comment: comment, message: "Don't worry it's gone now!"} 
    end
    
    private

    def comment_params
        params.require(:comment).permit(:text, :author, :post_id, :user_id)
    end
end