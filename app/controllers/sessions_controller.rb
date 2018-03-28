class SessionsController < ApplicationController
  def new
  	@user = User.new
  end

  def login
  end

  def logout
  end
end
