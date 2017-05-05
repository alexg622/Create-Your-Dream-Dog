class DogsController < ApplicationController

	def index
		@dogs1 = Dog.all 
		@dogs = @dogs1.sort_by {|dog| dog.likes.length}.reverse
	end 

	def new
		@dog = Dog.new
		@page = "new dog page"
	end 

	def create
		@dog = Dog.new(dog_params)
		if @dog.save 
			redirect_to @dog
		else 
			@errors = @dog.errors.full_messages
			render 'new'
		end 
	end 

	def show
		@dog = Dog.find(params[:id])
		@comments = @dog.comments 
	end 

	def edit
		@dog = Dog.find(params[:id])
	end 

	def update
		@dog = Dog.find(params[:id])
		@dog.assign_attributes(dog_params)
		if @dog.save
			redirect_to @dog 
		else 
			@error = @dog.errors.full_messages
			render 'edit'
		end 
	end 

	def destroy
		@dog = Dog.find(params[:id])
		@dog.delete
		redirect_to current_user 
	end 


	private 
	def dog_params
		params.require(:dog).permit(:age, :name, :eyes, :color, :weight, :height, :personality, :sex, :owner_id)
	end 
end 