class Like < ApplicationRecord
	belongs_to :comment
	belongs_to :answer
	belongs_to :mf, optional: true
	belongs_to :ff, optional: true
	belongs_to :user
end
