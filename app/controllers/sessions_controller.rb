class SessionsController < ApplicationController
	
	def new 
	end 

	def create
		@owner = Owner.find_by(username: params[:username])
		if @owner 
			if @owner.authenticate(params[:password])
				login(@owner)
				redirect_to @owner 
			end 
		else 
			@error = "Please put in your usernmae and password"
			render 'new'
		end 
	end 

	def destroy
		logout
		redirect_to root_path 
	end 
end 

