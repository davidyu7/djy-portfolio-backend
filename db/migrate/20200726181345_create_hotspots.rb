class CreateHotspots < ActiveRecord::Migration[6.0]
  def change
    create_table :hotspots do |t|
      t.integer :image_id
      t.text :description
      t.integer :xpos
      t.integer :ypos

      t.timestamps
    end
  end
end
