class Place < ApplicationRecord
    belongs_to :user #a place belongs to a user
    has_many :comments #a place can have many comments
    has_many :photo #a place can have many photos
    
    
    geocoded_by :address
    after_validation :geocode
    
    validates :name, length: {minimum: 3}, presence: true#validate name field has minimum of 3 char
    validates :address, presence: true #validate presence of address
   
    
end
