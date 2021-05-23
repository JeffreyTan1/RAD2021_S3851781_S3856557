class RatingsController < ApplicationController
  def addRating
    if Rating.find_by(user_id: current_user.id).nil?
      score = params[:likert]
      id = current_user.id
      Rating.create(user_id: current_user.id, rating: score)
      redirect_to show_user_bag_path(:id => current_user.id), notice: 'Thanks for rating Clothic!'
    else
      redirect_to show_user_bag_path(:id => current_user.id), notice: 'Thanks, but we\'ve already got a rating from you.'
    end
  end
  

end