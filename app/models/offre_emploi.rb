class OffreEmploi < ApplicationRecord
	belongs_to :domaine
	belongs_to :user
	has_many :commentaires
	has_many :likes

end
