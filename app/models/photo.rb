class Photo < ApplicationRecord
    belongs_to :place #a photo belongs to a place
    belongs_to :user #a photo belongs to a user
    mount_uploader :picture, PictureUploader
end
