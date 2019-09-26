class Mf < ApplicationRecord
#index
	belongs_to :field
	belongs_to :city
#attributs
	has_many :orders
	has_many :users, through: :orders
	has_many :comments
	has_many :answers
	has_many :likes

end
