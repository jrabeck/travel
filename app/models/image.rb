class Image < ApplicationRecord
	belongs_to :trip
	belongs_to :user
	belongs_to :stop
	
	include PublicActivity::Model
	tracked
end
