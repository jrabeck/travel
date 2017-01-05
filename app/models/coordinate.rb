class Coordinate < ApplicationRecord

	def address
	end 
	
	include PublicActivity::Model
	tracked

end
