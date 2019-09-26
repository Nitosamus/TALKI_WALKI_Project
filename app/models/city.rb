class City < ApplicationRecord
	has_many :users
	has_many :mf
	has_many :ff
end
