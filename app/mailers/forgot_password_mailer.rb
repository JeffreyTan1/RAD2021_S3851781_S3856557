class ForgotPasswordMailer < ApplicationMailer
    def forgot_password_email
        user = User.find_by(email: params[:email])
        bpInstance = BypassPasswordInstance.find_by(userId: user.id)
        key = bpInstance.key
        @link = new_session_url + '/' + key
        puts @link
        mail(to: params[:email], subject: "Clothic Login")
    end
end
