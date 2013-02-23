class CreatePackets < ActiveRecord::Migration
  def change
    create_table :packets do |t|
      t.string :packet_size
      t.decimal :price, :precision => 6, :scale => 2
      t.float :discount_percentage
      t.integer :quantity_available
      t.references :seed

      t.timestamps
    end
    add_index :packets, :seed_id
  end
end
