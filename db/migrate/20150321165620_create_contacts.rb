class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.integer :collective_id

      t.timestamps null: false
    end
    add_index :contacts, :name, :unique => true
  end
end
