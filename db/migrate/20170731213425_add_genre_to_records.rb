class AddGenreToRecords < ActiveRecord::Migration[5.0]
  def change
    add_column :records, :genre, :string
    add_column :records, :country, :string
    add_column :records, :position, :string
    add_column :records, :tracktitle, :string
  end
end
