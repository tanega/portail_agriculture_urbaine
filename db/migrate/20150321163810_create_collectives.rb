class CreateCollectives < ActiveRecord::Migration
  def change
    create_table :collectives do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.integer :collective_type_id
      t.string :website

      t.timestamps null: false
    end
    add_index :collectives, :name, :unique => true
    add_index :collectives, :collective_type_id
  end
end
