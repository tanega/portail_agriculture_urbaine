class CreateTypologyRelations < ActiveRecord::Migration
  def change
    create_table :typology_relations do |t|
      t.integer :project_id
      t.integer :typology_id

      t.timestamps null: false
    end
    add_index :typology_relations, :project_id
    add_index :typology_relations, :typology_id
    add_index :typology_relations, [:project_id, :typology_id], unique: true
  end
end
