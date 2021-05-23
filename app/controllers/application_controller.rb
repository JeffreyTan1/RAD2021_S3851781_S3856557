class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  helper_method :current_user, :logged_in?
  before_action :set_saved_list_items
  
  def set_saved_list_items
    if !current_user.nil?
      @savedListItems = current_user.saved_list.items
    end
  end
  
  private

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    current_user
  end
  
  
end
