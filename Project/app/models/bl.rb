class Bl < ApplicationRecord
	has_and_belongs_to_many :containers, dependent: :destroy
  belongs_to :travel, dependent: :destroy
  belongs_to :emisor, class_name: 'ShippingCompany', dependent: :destroy
  has_many :houses, class_name: 'Bl', foreign_key: 'master_id', dependent: :destroy
  belongs_to :master, class_name: 'Bl', optional: 'true', dependent: :destroy
end