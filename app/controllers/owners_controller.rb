class OwnersController < ApplicationController

	def new 
		@owner = Owner.new 
	end 

	def create 
		@owner = Owner.create(owners_params)
		if @owner.save
			login(@owner)
			redirect_to @owner 
		else 
			@errors = @owner.errors.full_messages 
			render 'new'
		end 
	end 

	def show
		@page = "You are on owner page" 
		@owner = Owner.find(params[:id]) 
		@dogs = @owner.dogs.all 
	end 

	def edit
		@owner = Owner.find(params[:id])
	end 

	def update 
		@owner = Owner.find(params[:id])
		@owner.assign_attributes(owners_params)
		if @owner.save
			redirect_to @owner 
		else
			@errors = @owner.errors.full_messages
			render 'edit'
		end 
	end 

	def destroy
		@owner = Owner.find(params[:id])
		logout 
		@owner.destroy 
		redirect_to dogs_path
	end 

	private
	def owners_params
		params.require(:owner).permit(:name, :username, :email, :password)
	end 
end 


