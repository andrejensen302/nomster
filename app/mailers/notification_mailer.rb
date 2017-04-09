class NotificationMailer < ApplicationMailer
     default from: 'no-reply@yelpclone.com'
   
   def comment_added(comment) #will be able to access specific details about the comment that exists in our database
       @place = comment.place #comment on a specific place
       @place_owner = @place.user #the owner of the comment
       
       mail(to: @place_owner.email, #mail to the comment owner's e-mail address
            subject: "A comment has been added to #{@place.name}") #the comment will show the name of the specific place. Interpolation
   end
end
