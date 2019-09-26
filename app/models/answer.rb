class Answer < ApplicationRecord
#attribut
	has_many :likes
# index
	belongs_to :user
	belongs_to :mf
	belongs_to :ff
	belongs_to :comment
end
