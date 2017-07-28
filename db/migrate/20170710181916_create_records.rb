class CreateRecords < ActiveRecord::Migration[5.0]
  def change
    create_table :records, id: false do |t|
      t.string :name
      t.integer :price
      t.primary_key :release_id
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
