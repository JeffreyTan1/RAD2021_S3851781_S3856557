class NewsletterMailer < ApplicationMailer
    def newsletter_email
        mail(to: params[:emailDest], subject: "Clothic newsletter")
    end
end
