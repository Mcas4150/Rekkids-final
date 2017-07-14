class AddDatesToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :from, :date
    add_column :orders, :to, :date
  end
end
