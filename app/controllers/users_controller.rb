class UsersController < ApplicationController

  def show
  	@user = User.find(params[:id])
  end 

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
  		redirect_to user_url(@user)
  	else
  		render 'new'
  	end
  end

   private

   	def user_params
   		byebug
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
   	end 

  def index
  	@user = User.new
  end

end

