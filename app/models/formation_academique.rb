class FormationAcademique < ApplicationRecord
	belongs_to :user
	has_many :commentaires
	has_many :likes

	validates :titre, presence: true
	validates :domaine, presence: true
	validates :description, presence: true
	validates :mail, presence: true
end
