class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :place
    after_create :send_comment_email #sends automated email after comment has been created
    
    RATINGS = {
     'one star': '1_star',
     'two stars': '2_stars',
     'three stars': '3_stars',
     'four stars': '4_stars',
     'five stars': '5_stars'
    }  #for a rating system in the comments section
    
    def humanized_rating
        RATINGS.invert[self.rating]
    end
    #allow us to call a humanized_rating from every single comment we look up.


    def send_comment_email #active callback - automatically send outs e-mail when a user puts in a comment
        NotificationMailer.comment_added(self).deliver
    end
end