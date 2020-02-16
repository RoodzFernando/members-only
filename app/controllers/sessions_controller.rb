class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to user, flash: {success: "Welcome back!"}
    else
      flash.now[:danger] = 'Email or Password is incorrect.'
      render 'new'
    end
  end

  def destroy
  end
end
