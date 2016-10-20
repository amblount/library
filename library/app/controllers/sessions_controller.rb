class SessionsController < ApplicationController
  def new
  end

  def create
    if User.confirm(params)
      flash[:notice] = "Successfully logged in."
      redirect_to user_path @user.id
    else
      #error
      flash.now[:danger] = 'Invalid email/password combination' # Not quite right!
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "Successfully logged out."
    redirect_to root_path
  end
end
