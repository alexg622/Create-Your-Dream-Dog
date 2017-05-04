class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :login, :logout

  def login(owner)
  	session[:owner_id] = owner.id 
	end

		
	def logout
		session[:owner_id] = nil 
	end 

	def current_user
		if session[:owner_id]
			Owner.find(session[:owner_id])
		else 
			nil 
		end 
	end 
end 