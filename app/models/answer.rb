class Answer < ApplicationRecord
#attribut
	has_many :likes
# index
	belongs_to :user
	belongs_to :mf, optional: true
	belongs_to :ff, optional: true
	belongs_to :comment, optional: true
end
