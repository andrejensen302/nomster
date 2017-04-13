class Photo < ApplicationRecord
    belongs_to :place #a photo belongs to a place
    mount_uploader :picture, PictureUploader
end
