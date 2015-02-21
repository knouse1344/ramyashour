class SessionsController < ApplicationController
    def new
    end
 
	def create
		user = User.find_by(email: params[:session][:email].downcase)
	    if user && user.authenticate(params[:session][:password])
	      sign_in user
	      redirect_to "/main/index"
	      flash[:success] = "Welcome back!"
	    else
	      flash.now[:invalid] = 'Invalid email/password combination'
	      render 'new'
	    end
	end

	def destroy
		sign_out
		flash[:success] = "See you again soon!"
		redirect_to root_url
	end
end
