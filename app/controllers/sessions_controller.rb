class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path, notice: 'You are logged in'
    else
      redirect_to new_session_path, notice: 'Email or password is invalid'
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to root_path, notice: 'You are now logged out'
  end
  
  private
  def authenticate(password)
    user.password == password
  end
  
end