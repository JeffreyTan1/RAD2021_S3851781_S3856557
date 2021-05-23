class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if !user.nil?
      if user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to root_path, notice: 'You are logged in'
      else
        redirect_to new_session_path, notice: 'Email or password is invalid'
      end
    else
      redirect_to new_session_path, notice: 'Your email was not found'
    end
  end
  
  def createTwitterSession
    
    session[:user_id] = params[:id]
    redirect_to root_path, notice: 'You are logged in'
  end
  
  def destroy
    session.delete(:user_id)
    redirect_to root_path, notice: 'You are now logged out'
  end
  
  def show_forgot_password
  end
  
  def forgot_password
    user = User.find_by(email: params[:email])
    if user.nil?
      redirect_to forgot_password_session_path, notice: 'This email is not in our database!'
    else
      if BypassPasswordInstance.find_by(userId: user.id).nil?
        oneTimeKey = Digest::SHA256.hexdigest  user.email+Time.now.to_s+user.password
        bpInstance = BypassPasswordInstance.create(userId: user.id, key: oneTimeKey)
        bpInstance.save
        ForgotPasswordMailer.with(email: params[:email]).forgot_password_email.deliver_later
        redirect_to forgot_password_session_path, notice: 'Please check your email for the link to login.'
      else
        redirect_to forgot_password_session_path, notice: 'You already have a link pending, please check your email.'
      end
    end
  end
  
  def bypass_password
    bpInstance = BypassPasswordInstance.find_by(key: params[:key])
    if !bpInstance.nil?
      session[:user_id] = bpInstance.userId
      bpInstance.destroy
      redirect_to root_path, notice: 'LOGGED IN VIA LOGIN LINK'
    else
      redirect_to new_session_path, notice: 'Invalid login link!'
    end
  end
  
  
  private
  def authenticate(password)
    user.password == password
  end
  

  
end