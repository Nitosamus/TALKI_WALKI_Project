class Job < ApplicationRecord
#attributs
	has_many :comments
	has_many :answers
	has_many :likes
#index
	belongs_to :city
	belongs_to :field
end
