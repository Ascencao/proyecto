class Person < ApplicationRecord
	has_one :birth_registry
	has_many :pets
	# def birth_registry
	# 	BirthRegistry.find_by(id: self.person_id)
	# end
end
