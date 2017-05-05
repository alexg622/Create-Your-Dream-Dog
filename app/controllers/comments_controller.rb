class CommentsController < ApplicationController

	def new
		@dog = Dog.find(params[:id])
		@comment = Comment.new
	end 

	def create
		@dog = Dog.find(params[:id])
		@comment = Comment.new(comments_params)
		if @comment.save
			redirect_to @dog 
		else 
			@errors
			render 'new'
		end 
	end 

	def show
		@comment = Comment.find(params[:id])
		@dog = @comment.dog 
		@owner = @comment.owner 
	end 
	
	private

	def comments_params 
		params.require(:comment).permit(:description, :owner_id, :dog_id)
	end 
end 