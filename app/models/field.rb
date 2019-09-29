class Field < ApplicationRecord
	belongs_to :pf
	belongs_to :af
#for each field
	has_many :mfs
	has_many :ffs
	has_many :jobs
end