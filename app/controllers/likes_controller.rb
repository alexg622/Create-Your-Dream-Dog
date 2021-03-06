class LikesController < ApplicationController

	def create
		@dog = Dog.find(params[:id])
		@owner = current_user
		if @dog.if_owner_liked(current_user) != true 
			@like = Like.new(owner_id: @owner.id, dog_id: @dog.id)
			if @like.save 
				redirect_to dog_path(@dog) 
			else 
				@comments = @dog.comments 
				render template: "dogs/show"
			end 
		else 
			@errors = "You can only like a dog once"
			@comments = @dog.comments 
			render template: "dogs/show"
		end
	end 
end 