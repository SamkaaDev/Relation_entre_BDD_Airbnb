class Stroll < ApplicationRecord
	has_many :dog_for_strolls
	has_many :dogs, through: :dog_for_strolls
	belongs_to :dogsitter
end
