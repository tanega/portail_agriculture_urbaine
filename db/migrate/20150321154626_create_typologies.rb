class CreateTypologies < ActiveRecord::Migration
  def change
    create_table :typologies do |t|
      t.string :name
      t.integer :subtypology_id

      t.timestamps null: false
    end
    add_index :typologies, :name, :unique => true
  end
end
