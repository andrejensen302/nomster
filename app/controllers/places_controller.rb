class PlacesController < ApplicationController
    
    def index
        @places = Place.all #all the places in our database are stufed into a variable called @places.
    end
    
end
