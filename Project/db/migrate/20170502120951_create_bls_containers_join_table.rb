class CreateBlsContainersJoinTable < ActiveRecord::Migration[5.0]
  def change
    create_join_table :bls, :containers do |t|
      t.index :bl_id
      t.index :container_id
    end
  end
end
