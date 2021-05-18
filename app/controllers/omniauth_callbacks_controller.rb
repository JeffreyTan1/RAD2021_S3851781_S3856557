class OmniauthCallbacksController < ApplicationController
  def twitter
    if !User.find_by(email: auth.info.email).nil?
      # use token as password
      user = User.find_by(email: auth.info.email)
      if user.authenticate(auth.credentials.token[0,19])
        puts user.id
        redirect_to "/session/twitter/#{user.id}/"
      else
        redirect_to new_session_path, notice: 'Email or password is invalid'
      end
    else
      newUser = User.create(name: auth.info.name, email: auth.info.email, password: auth.credentials.token[0,19])
      newUser.save
      
      puts "saved?"
      #creates a saved list for the user
      saved_list = SavedList.new({user_id: newUser.id})
      saved_list.save
      #creates a saved list for the user
      bag = Bag.new({user_id: newUser.id})
      bag.save
      
      if newUser.authenticate(auth.credentials.token[0,19])
        redirect_to "/session/twitter/#{newUser.id}/"
      else
        redirect_to new_session_path, notice: 'Email or password is invalid'
      end
    end
  end
  
  def auth
    request.env['omniauth.auth']
  end
end