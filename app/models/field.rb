class Field < ApplicationRecord
	belongs_to :pf
	belongs_to :af
	belongs_to :job
#for each field
	has_many :mf
	has_many :ff
end
