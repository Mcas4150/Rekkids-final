class AddRecordToTracks < ActiveRecord::Migration[5.0]
  def change
    add_reference :tracks, :record, foreign_key: true
  end
end
