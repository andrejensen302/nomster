class NotificationMailer < ApplicationMailer
     default from: 'no-reply@yelpclone.com'
   
   def comment_added
       mail(to: "andrejensen302@gmail.com", subject: "A comment has been added to your place")
   end
end