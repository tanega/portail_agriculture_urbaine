class AddCategoryToTypologies < ActiveRecord::Migration
  def self.up
  	add_column :typologies, :category, :string
  end

  def self.down
  	remove_column :typologies, :category
  end
end
