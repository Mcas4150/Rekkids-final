class AddYoutubeidToRecords < ActiveRecord::Migration[5.0]
  def change
    add_column :records, :youtubeid, :string
  end
end
