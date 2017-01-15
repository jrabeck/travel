class Image < ApplicationRecord
	belongs_to :trip, optional: true
	belongs_to :user, optional: true
	belongs_to :stop, optional: true
	
	include PublicActivity::Model
	tracked
end
