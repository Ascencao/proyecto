class AddDestinyRefToTravels < ActiveRecord::Migration[5.0]
  def change
    add_reference :travels, :destiny, index: true
  end
end
