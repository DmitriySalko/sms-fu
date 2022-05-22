class SMSNotifier < ActionMailer::Base
  def send_sms(recipient, message, sender_email)
    mail(:to => recipient, :from => sender_email, :subject => '') do |format|
      format.text { render :plain => message }
      format.html { render :plain => message }
    end
  end
end
