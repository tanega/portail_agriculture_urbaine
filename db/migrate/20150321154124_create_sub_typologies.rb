class CreateSubTypologies < ActiveRecord::Migration
  def change
    create_table :sub_typologies do |t|
      t.string :name

      t.timestamps null: false
    end
    add_index :sub_typologies, :name, :unique => true
  end
end
