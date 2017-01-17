class Follow < ApplicationRecord
	belongs_to :follower, class_name: "User",foreign_key: "follower_id"
	belongs_to :following, class_name: "User",foreign_key: "following_id"
	validates_uniqueness_of :follower_id, :scope => :following_id
	include PublicActivity::Model
	tracked
end
