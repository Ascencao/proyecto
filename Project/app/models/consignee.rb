class Consignee < ApplicationRecord
	has_and_belongs_to_many :nvoccs, dependent: :destroy
end
