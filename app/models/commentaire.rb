class Commentaire < ApplicationRecord
	belongs_to :user
	has_many :reponses
	
	has_many :likes
end
