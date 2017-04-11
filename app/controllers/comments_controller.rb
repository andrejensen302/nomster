class CommentsController < ApplicationController
    before_action :authenticate_user! #authenticate user before any comments are logged in
    
    def create
        @place = Place.find(params[:place_id]) #finds the place associated with the id
        @place.comments.create(comment_params.merge(user: current_user)) #create comment that's connected to the place that's loaded
        #merge method - combines two dictionaries (dictionary is a data structure known as a hash table)
        redirect_to place_path(@place) #sends user back to place page after user creates the item
    end
    
    private
    
    def comment_params #pull data out of the comments
        params.require(:comment).permit(:message, :rating)
    end
end
