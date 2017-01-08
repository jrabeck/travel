class Stop < ApplicationRecord
	belongs_to :trip

	has_many :stop_images
	has_many :images, through: :stop_images 



	geocoded_by :address
	after_validation :geocode
	include PublicActivity::Model
	tracked

end
