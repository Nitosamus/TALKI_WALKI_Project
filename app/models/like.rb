class Like < ApplicationRecord
	belongs_to :user
	belongs_to :commentaire , optional:true
	belongs_to :reponse , optional:true
	belongs_to :formation_academique, optional: true
	belongs_to :professional_formation, optional: true
	belongs_to :offre_emploi, optional: true
end
