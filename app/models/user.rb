class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :places #a user can create many places
  has_many :comments #a user can create many comments
  has_many :photos #a user can upload many photos
end
