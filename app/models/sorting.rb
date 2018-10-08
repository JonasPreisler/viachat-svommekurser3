class Sorting < ApplicationRecord
	has_many :programs
	has_many :days
	has_many :speakers
end
