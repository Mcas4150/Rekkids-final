class AddArtistToRecords < ActiveRecord::Migration[5.0]
  def change
    add_column :records, :artist, :string
  end
end
