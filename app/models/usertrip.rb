class Usertrip < ApplicationRecord
	belongs_to :user
	belongs_to :trip
	validates_uniqueness_of :user_id, :scope => :trip_id
	include PublicActivity::Model
	tracked
end
