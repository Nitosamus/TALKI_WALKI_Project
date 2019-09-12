class Commentaire < ApplicationRecord
	belongs_to :user
	has_many :reponses
	belongs_to :formation_academique, optional: true
	belongs_to :professional_formation, optional: true
	belongs_to :offre_emploi, optional: true
	has_many :likes
end
