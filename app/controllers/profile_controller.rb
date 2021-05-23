class ProfileController < ApplicationController
  def profilepageEmail
    NewsletterMailer.with(emailDest: current_user.email).newsletter_email.deliver_later
  end
  
  def profilepage
    @aUser = current_user
    @gravatarUrl = GravatarURL(@aUser.email)
    puts "DEBUG: " + @aUser.name
  end
  
  
  
  def GravatarURL(email_address)
    email_address = current_user.email.downcase
    hash = Digest::MD5.hexdigest(email_address)
    return "https://www.gravatar.com/avatar/#{hash}"
    end
end
