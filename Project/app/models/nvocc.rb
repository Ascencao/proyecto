class Nvocc < ApplicationRecord
	has_and_belongs_to_many :consignees, dependent: :destroy
end