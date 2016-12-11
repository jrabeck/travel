class Image < ApplicationRecord
	belongs_to :trip
	belongs_to :user
	belongs_to :stop
end
