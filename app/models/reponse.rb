class Reponse < ApplicationRecord
	belongs_to :commentaire
	belongs_to :user
	has_many :likes
end
