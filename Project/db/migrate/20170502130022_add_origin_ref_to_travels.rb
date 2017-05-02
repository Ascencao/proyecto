class AddOriginRefToTravels < ActiveRecord::Migration[5.0]
  def change
    add_reference :travels, :origin, index: true
  end
end
