class Comment < ApplicationRecord
	has_many :answers
	has_many :likes
	# index
	belongs_to :mf, optional: true
	belongs_to :ff, optional: true
	belongs_to :user, optional: true
	belongs_to :job, optional: true
end

