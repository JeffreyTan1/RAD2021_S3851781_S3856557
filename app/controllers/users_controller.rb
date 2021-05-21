class UsersController < ApplicationController
 
   def new
    @user = User.new
  end

  def create
    if :password != :confirm_password
      
        @user = User.new(user_params)
        if @user.save
          redirect_to root_path, notice: 'You have successfully created an account!'
          puts @user.id
          #creates a saved list for the user
          @saved_list = SavedList.new({user_id: @user.id})
          @saved_list.save
          #creates a bag for the user
          @bag = Bag.new({user_id: @user.id})
          @bag.save
        else
          render :new
        end
      
    else
      redirect_to new_user_path, notice: 'Passwords did not match'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
  
end
