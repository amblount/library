class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params[:email].downcase)
    if @user && @user.authenticate(params[:password])
      #log in
      log_in
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
