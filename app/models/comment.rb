class Comment < ApplicationRecord
	has_many :answers
	has_many :likes
	# index
	belong_to :mf
	belong_to :ff
	belong_to :user
end

