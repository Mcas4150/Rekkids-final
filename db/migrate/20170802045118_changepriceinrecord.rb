class Changepriceinrecord < ActiveRecord::Migration[5.0]
  def change
    change_column(:records, :price_cents, :float)
  end
end
