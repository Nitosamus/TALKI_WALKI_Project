class FormationAcademique < ApplicationRecord
	belongs_to :user
	has_many :commentaires
	has_many :likes
end
