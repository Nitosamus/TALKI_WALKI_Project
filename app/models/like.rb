class Like < ApplicationRecord
	belongs_to :comment
	belongs_to :answer
	belongs_to :mf
	belongs_to :ff
	belongs_to :user
end
