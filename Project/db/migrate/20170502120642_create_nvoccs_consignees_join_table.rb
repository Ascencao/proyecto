class CreateNvoccsConsigneesJoinTable < ActiveRecord::Migration[5.0]
  def change
    create_join_table :nvoccs, :consignees do |t|
      t.index :nvocc_id
      t.index :consignee_id
    end
  end
end
