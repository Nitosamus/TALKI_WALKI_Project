class User < ApplicationRecord
	 after_create :welcome_send

	def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end


	has_one_attached :image
	
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

	has_many :professional_formations
	has_many :formation_academiques
	has_many :offre_emplois 
	has_many :commentaires
	has_many :reponses
	has_many :likes

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
