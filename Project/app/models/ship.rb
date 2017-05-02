class Ship < ApplicationRecord
  belongs_to :shipping_company, dependent: :destroy
  has_many :travels, dependent: :destroy
end
