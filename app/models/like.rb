class Like < ApplicationRecord
	belongs_to :comment, optional: true
	belongs_to :answer, optional: true
	belongs_to :mf, optional: true
	belongs_to :ff, optional: true
	belongs_to :job, optional: true
	belongs_to :user
end
