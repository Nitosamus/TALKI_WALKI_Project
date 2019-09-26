class Order < ApplicationRecord
#index
	belongs_to :user
	belongs_to :mf
	belongs_to :ff
#attributs	
end
