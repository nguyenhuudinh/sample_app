class SessionsController < ApplicationController
  def new
  end

  def create
<<<<<<< HEAD
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])

    else
      # Create an error message.
      render 'new'
    end
  end

  def destroy
  end
=======
  	user = User.find_by(email: params[:session][:email].downcase)
  	if user && user.authenticate(params[:session][:password])
	 # Log the user in and redirect to the user's show page.
	 	log_in user
	 	redirect_to user
	else
		#Create an error message.
		flash[:danger] = 'Invalid email/password combination'
		render 'new'
  		end
	end

  	def destroy
  	end
>>>>>>> basic-login
end
