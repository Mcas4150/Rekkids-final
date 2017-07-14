class AddAddressToRecord < ActiveRecord::Migration[5.0]
  def change
    add_column :records, :address, :string
  end
end
