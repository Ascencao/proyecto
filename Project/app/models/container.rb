class Container < ApplicationRecord
	enum type_of: {"ST": 0, "HQ": 1}
	enum size: {"20 pies":0, "40 pies":1}
	has_many :bls, dependent: :destroy
end
