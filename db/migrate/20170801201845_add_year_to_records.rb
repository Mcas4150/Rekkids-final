class AddYearToRecords < ActiveRecord::Migration[5.0]
  def change
    add_column :records, :year, :integer
  end
end
