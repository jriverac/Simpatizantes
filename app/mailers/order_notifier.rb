class OrderNotifier < ActionMailer::Base
  default :from => "jrivera@qixi.com.mx"
  def welcome_email()
     
      mail(:to => "jaquich@me.com", :subject => "Welcome to My Awesome Qïxi")
  end
end
