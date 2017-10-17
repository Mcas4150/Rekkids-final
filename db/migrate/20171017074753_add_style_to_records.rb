class AddStyleToRecords < ActiveRecord::Migration[5.0]
  def change
    add_column :records, :style, :string
  end
end
