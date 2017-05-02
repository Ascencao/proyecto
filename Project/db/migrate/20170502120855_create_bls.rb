class CreateBls < ActiveRecord::Migration[5.0]
  def change
    create_table :bls do |t|
      t.references :travel, foreign_key: true
      t.string :code
      t.references :master, index: true

      t.timestamps
    end
  end
end
