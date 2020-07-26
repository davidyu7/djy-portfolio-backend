class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.string :src_url
      t.integer :project_id
      t.text :description

      t.timestamps
    end
  end
end
