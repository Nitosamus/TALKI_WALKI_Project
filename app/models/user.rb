class User < ApplicationRecord
	has_one_attached :image
	
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

	has_many :professional_formations
	has_many :formation_academiques
	has_many :offre_emplois 
	has_many :commentaires
	has_many :reponses
	has_many :likes
	has_many :messages

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    
    has_many :room_messages,
           dependent: :destroy
    has_many :rooms, through: :room_messages
    	validates :image, presence: true

    def gravatar_url
    	gravatar_id = Digest::MD5::hexdigest(email).downcase
    	"https://gravatar.com/avatar/#{gravatar_id}.png"
  	end

end
