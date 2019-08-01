class Dogsitter < ApplicationRecord
	has_many :strolls
	has_many :dog_for_strolls, through: :strolls
	has_many :dogs, through: :dog_for_strolls
	belongs_to :city
end
