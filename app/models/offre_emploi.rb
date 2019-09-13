class OffreEmploi < ApplicationRecord
	belongs_to :user
	has_many :commentaires
	has_many :likes

	validates :salaire, presence: true
	validates :description, presence: true
	validates :mail, presence: true

end
