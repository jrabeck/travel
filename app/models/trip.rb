class Trip < ApplicationRecord

	has_many :usertrips
  has_many :users, through: :usertrips
	has_many :stops
	has_many :comments
	has_many :images
	has_many :comments, as: :commentable 
	validates :name, presence: true 
	# validates :start_date, presence: true
	include PublicActivity::Model
	tracked

 end
