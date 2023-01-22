class CreateBuildings < ActiveRecord::Migration[7.0]
  def change
    create_table :buildings do |t|
      t.string :title
      t.string :developer
      t.integer :facing_area
      t.string :material

      t.timestamps
    end
  end
end
