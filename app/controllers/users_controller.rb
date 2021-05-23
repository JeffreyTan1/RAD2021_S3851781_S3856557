class UsersController < ApplicationController
 
   def new
    @user = User.new
  end

  def create
    
        @user = User.new(user_params)
        @user.update(first_checkout: 1, is_admin: 0)
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
  
  end
  
  def edit_password
    if !current_user
      redirect_to new_session_path
    end
  end
  #also updates email
  def update_password
    if current_user
      pwChanged = !params[:new_pw].nil?
      emailChanged = !params[:new_email].nil?
      
      
      if pwChanged
      current_user.update(password: params[:new_pw])
      current_user.save
      end
      
      if emailChanged
      current_user.update(email: params[:new_email])
      current_user.save
      end
      
      redirect_to '/profile' , notice: "Email and/or password changed!"
    else
      redirect_to new_session_path
    end
    
    
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
  
end
