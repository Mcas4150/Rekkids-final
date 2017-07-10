class AddPhotoToRecords < ActiveRecord::Migration[5.0]
  def change
    add_column :records, :photo, :string
  end
end
