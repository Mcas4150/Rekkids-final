class AddTracklistToRecord < ActiveRecord::Migration[5.0]
  def change
    add_column :records, :tracklist, :string
  end
end
