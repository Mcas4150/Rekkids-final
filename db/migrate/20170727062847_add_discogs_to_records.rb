class AddDiscogsToRecords < ActiveRecord::Migration[5.0]
  def change
    add_column :records, :release_id, :integer
    add_column :records, :catno, :string
  end
end
