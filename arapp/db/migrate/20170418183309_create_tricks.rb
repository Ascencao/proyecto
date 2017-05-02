class CreateTricks < ActiveRecord::Migration[5.0]
  def change
    create_table :tricks do |t|
      t.string :name
      t.references :pet, foreign_key: true

      t.timestamps
    end
  end
end
