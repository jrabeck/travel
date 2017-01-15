class Stop < ApplicationRecord
	belongs_to :trip
	has_many :images
	has_many :comments, as: :commentable 
	validates :name, presence: true
	geocoded_by :address
	after_validation :geocode
	include PublicActivity::Model
	tracked

end
