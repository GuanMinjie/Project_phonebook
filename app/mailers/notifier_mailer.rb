class NotifierMailer < ApplicationMailer
   default from: "15313111698@163.com"
   def welcome_email(user)
      @user = user
      mail(to: @user.email,subject: 'welcome to sign_up')
   end
   def send_email_to_linkman(linkman)
      @linkman =linkman
      mail(to: @linkman.email,subject: 'welcome to signin')
   end
end
