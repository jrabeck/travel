class User < ApplicationRecord
	has_many :usertrips
	has_many :trip_comments
	has_many :images
	has_many :trips, through: :usertrips
	has_many :followers, class_name: "Follow", foreign_key: "following_id"
	has_many :following, class_name: "Follow", foreign_key: "follower_id"
end
