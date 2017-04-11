class PhotosController < ApplicationController
    before_action :authenticate_user! #authenticate the user before any photos are added
    
    def create #save new photos into database
        @place = Place.find(params[:place_id]) #load the place that the photo belongs too
        @place.photos.create(photo_params)
        redirect_to place_path(@place) #redirect user to place once image is done uploading
    end
    
    def photo_params #pulls the picture values out of the form
        params.require(:photo).permit(:caption, :picture)
    end
    
end