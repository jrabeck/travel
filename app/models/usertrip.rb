class Usertrip < ApplicationRecord
	belongs_to :user
	belongs_to :trip
	include PublicActivity::Model
	tracked
end
