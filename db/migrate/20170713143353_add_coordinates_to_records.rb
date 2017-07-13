class AddCoordinatesToRecords < ActiveRecord::Migration[5.0]
  def change
    add_column :records, :latitude, :float
    add_column :records, :longitude, :float
  end
end
