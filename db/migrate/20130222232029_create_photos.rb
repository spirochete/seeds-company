class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :photo_url
      t.references :seed

      t.timestamps
    end
    add_index :photos, :seed_id
  end
end
