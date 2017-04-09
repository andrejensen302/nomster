class Place < ApplicationRecord
    belongs_to :user
    has_many :comments
    has_many :photo
    
    
    geocoded_by :address
    after_validation :geocode
    
    validates :name, length: {minimum: 3}, presence: true#validate name field has minimum of 3 char
    validates :address, presence: true #validate presence of address
   
    
end
