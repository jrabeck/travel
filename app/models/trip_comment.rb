class TripComment < ApplicationRecord
	belongs_to :trip
	belongs_to :user
	include PublicActivity::Model
	tracked
end
