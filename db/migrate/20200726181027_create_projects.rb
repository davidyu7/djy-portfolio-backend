class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.string :thumbnail_url
      t.string :github_url
      t.integer :category_id
      t.integer :folder_id
      t.datetime :published_at

      t.timestamps
    end
  end
end
