class CreateCollectiveTypes < ActiveRecord::Migration
  def change
    create_table :collective_types do |t|
      t.string :name

      t.timestamps null: false
    end
    add_index :collective_types, :name, :unique => true
  end
end
