class Country < ApplicationRecord
	has_many :travels, dependent: :destroy
end
