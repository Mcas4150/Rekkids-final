class RemoveAddressFromRecord < ActiveRecord::Migration[5.0]
  def change
    remove_column :records, :address, :string
    remove_column :records, :longitude, :float
    remove_column :records, :latitude, :float
  end
end
