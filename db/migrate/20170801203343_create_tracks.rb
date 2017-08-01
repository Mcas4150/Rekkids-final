class CreateTracks < ActiveRecord::Migration[5.0]
  def change
    create_table :tracks do |t|
      t.string :position
      t.string :title
      t.string :duration

      t.timestamps
    end
  end
end
