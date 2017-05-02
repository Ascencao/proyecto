class ShippingCompany < ApplicationRecord
	has_many :ships, dependent: :destroy
end
