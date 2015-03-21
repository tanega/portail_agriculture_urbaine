class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.float :latitude
      t.float :longitude
      t.integer :typology_id
      t.integer :project_owner_id
      t.integer :collective_id
      t.string :land_owner
      t.timestamp :creation_date
      t.integer :status_id
      t.timestamp :status_date
      t.text :how_to_participate

      t.timestamps null: false
    end
  end
end
