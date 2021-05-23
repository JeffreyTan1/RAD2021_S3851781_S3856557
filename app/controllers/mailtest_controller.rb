class MailtestController < ApplicationController
    def mail_show
    end
    
    
    def mailtest
        if (params[:emailDest].blank?)
            redirect_to mailtest_path, notice: "Blank email!"
            # TODO Choose an action to perform if the email field is blank
        else
            if Subscription.find_by(email: params[:emailDest]).nil?
                subcription = Subscription.create(email: params[:emailDest])
                if subcription.valid?
                    NewsletterMailer.with(emailDest: params[:emailDest]).newsletter_email.deliver_later
                
                    redirect_to mailtest_path, notice: "Signed up to newsletter with email: #{params[:emailDest]}"
                else
                    redirect_to mailtest_path, notice: "Incorrect email format"
                end
            else
                redirect_to mailtest_path, notice: "You are already subscribed."
            end
            
        end
        
    end
    
    def toggle_sub
        email = params[:emailDest] + '.com'
        subcription = Subscription.find_by(email: email)
        if subcription.nil?
            Subscription.create(email: email)
            NewsletterMailer.with(emailDest: email).newsletter_email.deliver_later
            redirect_to profilepage_path, notice: "Signed up to newsletter with email: #{email}"
        else
            subcription.destroy
            redirect_to profilepage_path, notice: "Unsubscribed from email: #{email}.com"
        end
        
    end
    
end
