class MailtestController < ApplicationController
    def mailtest
        if (params[:emailDest].blank?)
            puts "NIL EMAIL INPUT"
            # TODO Choose an action to perform if the email field is blank
        else
            puts "INPUTTING EMAIL: " + params[:emailDest]
            NewsletterMailer.with(emailDest: params[:emailDest]).newsletter_email.deliver_later
        end
    end
    
end
