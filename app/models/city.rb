class City < ApplicationRecord
	has_many :users
	has_many :mfs
	has_many :ffs
	has_many :jobs
end
