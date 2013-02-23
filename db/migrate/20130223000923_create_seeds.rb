class CreateSeeds < ActiveRecord::Migration
  def change
    create_table :seeds do |t|
      t.string :catalog_number
      t.string :common_name
      t.string :variety
      t.string :genus
      t.string :species
      t.string :sub_species
      t.boolean :organic
      t.string :seed_type
      t.string :origin
      t.date :date_acquired
      t.integer :germination
      t.integer :days_to_maturity
      t.text :notes

      t.timestamps
    end
  end
end
