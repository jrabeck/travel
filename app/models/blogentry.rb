class Blogentry < ApplicationRecord
	belongs_to :user
	belongs_to :blogable, polymorphic: true
end
