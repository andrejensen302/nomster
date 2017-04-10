class PhotosController < ApplicationController
    before_action :authenticate_user! #authenticate the user before any photos are added
    
    def create #save new photos into database
        @place = Place.find(params[:id]) #load the place that the photo belongs too
        @place.photos.create(photos_params.merge(user: current_user))
        redirect_to place_path(@place) #redirect user to place once image is done uploading
    end
    
    def photo_params #pulls the values
        params.require(:photo).permit(:caption, :picture)
    end
    
end