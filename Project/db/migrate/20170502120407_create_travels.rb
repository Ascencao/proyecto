class CreateTravels < ActiveRecord::Migration[5.0]
  def change
    create_table :travels do |t|
      t.references :ship, foreign_key: true
      t.date :date
      t.string :code
      t.integer :status

      t.timestamps
    end
  end
end
