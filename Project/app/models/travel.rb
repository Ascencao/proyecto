class Travel < ApplicationRecord
	enum status: {"Por Salir": 0, "En Curso": 1, "Tocando Puerto": 2}
  belongs_to :ship, dependent: :destroy
  belongs_to :origin, class_name: 'Country', dependent: :destroy
 	belongs_to :destiny, class_name: 'Country', dependent: :destroy
end
