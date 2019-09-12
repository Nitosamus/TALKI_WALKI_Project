class Domaine < ApplicationRecord
	has_many :professional_formations
	has_many :formation_academiques
	has_many :offre_emplois
end
