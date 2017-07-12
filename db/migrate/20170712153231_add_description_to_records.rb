class AddDescriptionToRecords < ActiveRecord::Migration[5.0]
  def change
    add_column :records, :description, :string
  end
end
