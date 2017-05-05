class DislikesController < ApplicationController

	def create
		@owner = current_user 
		@dog = Dog.find(params[:id])
		if @dog.if_owner_disliked(current_user) != true 
			@dislike = Dislike.new(owner_id: @owner.id, dog_id: @dog.id)
			if @dislike.save
				redirect_to dog_path(@dog) 
			else 
				@comments = @dog.comments 
				render template: "dogs/show"
			end 
		else 
				@comments = @dog.comments 
				@errors = "You can only dislike a dog once"
				render template: "dogs/show"
		end 
	end 
end 