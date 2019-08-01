class Dog < ApplicationRecord
	has_many :dog_for_strolls
	has_many :strolls, through: :dog_for_strolls
	has_many :dogsitters, through: :strolls
	belongs_to :city
end
