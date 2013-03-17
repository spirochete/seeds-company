class AddPinyinToSeeds < ActiveRecord::Migration
  def change
  	add_column :seeds, :pinyin, :string
  end
end
