class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

# jointure pour user
# ETQ index
 belongs_to :city, optional: true
#ETQ attributs
has_many :comments
has_many :answers
has_many :likes

# Relation N-N entre user et ff, mf
has_many :orders
has_many :mfs, through: :orders
has_many :ffs, through: :orders

end
