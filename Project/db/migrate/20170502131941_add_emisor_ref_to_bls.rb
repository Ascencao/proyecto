class AddEmisorRefToBls < ActiveRecord::Migration[5.0]
  def change
    add_reference :bls, :emisor, index: true, dependent: :destroy
  end
end
