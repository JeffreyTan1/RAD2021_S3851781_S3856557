class UsersController < ApplicationController
   def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    begin
      if @user.save
        redirect_to root_path, notice: 'You have successfully created an account!'
        puts @user.id
        #creates a saved list for the user
        @saved_list = SavedList.new({user_id: @user.id})
        @saved_list.save
      else
        render :new
      end
    rescue ActiveRecord::RecordNotUnique
      redirect_to new_user_path, notice: 'This email is already being used!'
    end
    
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
