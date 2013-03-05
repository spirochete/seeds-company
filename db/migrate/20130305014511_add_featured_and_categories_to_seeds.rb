class AddFeaturedAndCategoriesToSeeds < ActiveRecord::Migration
  def change
  	add_column :seeds, :featured, :boolean
  	add_column :seeds, :categories, :string, :array => true, :default => []
  end
end
