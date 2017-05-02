class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :last_name
      t.string :nickname
      t.string :password
      t.string :email
      t.date :birthdate

      t.timestamps
    end
  end
end
