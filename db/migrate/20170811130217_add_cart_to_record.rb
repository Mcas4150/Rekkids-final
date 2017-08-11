class AddCartToRecord < ActiveRecord::Migration[5.0]
  def change
    add_column :records, :cart, :boolean
  end
end
