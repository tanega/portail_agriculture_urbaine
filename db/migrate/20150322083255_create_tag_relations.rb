class CreateTagRelations < ActiveRecord::Migration
  def change
    create_table :tag_relations do |t|
      t.integer :project_id
      t.integer :tag_id

      t.timestamps null: false
    end
    add_index :tag_relations, :project_id
    add_index :tag_relations, :tag_id
    add_index :tag_relations, [:project_id, :tag_id], unique: true
  end
end
