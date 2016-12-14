class User < ApplicationRecord
	has_secure_password
	has_many :usertrips
	has_many :trip_comments
	has_many :images
	has_many :trips
	has_many :trips, through: :usertrips
	
	has_many :follower_follows, foreign_key: :following_id, class_name: "Follow"
	has_many :following_follows, foreign_key: :follower_id, class_name: "Follow"

	has_many :followers, through: :follower_follows, source: :follower
	has_many :following, through: :following_follows, source: :following
end
