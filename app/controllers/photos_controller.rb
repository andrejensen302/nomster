class PhotosController < ApplicationController
    before_action :authenticate_user! #authenticate the user before any photos are added
    
    def create
    
    end
    
end
