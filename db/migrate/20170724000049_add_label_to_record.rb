class AddLabelToRecord < ActiveRecord::Migration[5.0]
  def change
    add_column :records, :label, :string
  end
end
