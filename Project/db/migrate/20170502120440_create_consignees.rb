class CreateConsignees < ActiveRecord::Migration[5.0]
  def change
    create_table :consignees do |t|
      t.string :dni
      t.string :name
      t.string :phone
      t.string :address

      t.timestamps
    end
  end
end
