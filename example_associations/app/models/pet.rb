class Pet < ApplicationRecord
	enum kind: {dog:1,cat:0}
  belongs_to :person
end
