class CreateNvoccsContainersJoinTable < ActiveRecord::Migration[5.0]
  def change
    create_join_table :nvoccs, :containers do |t|
      t.index :nvocc_id
      t.index :container_id
    end
  end
end
