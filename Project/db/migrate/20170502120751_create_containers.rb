class CreateContainers < ActiveRecord::Migration[5.0]
  def change
    create_table :containers do |t|
      t.integer :type_of
      t.integer :size
      t.string :code

      t.timestamps
    end
  end
end
