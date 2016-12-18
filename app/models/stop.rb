class Stop < ApplicationRecord
	belongs_to :trip
	geocoded_by :address
	after_validation :geocode

end
