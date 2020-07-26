class CreatePtJoins < ActiveRecord::Migration[6.0]
  def change
    create_table :pt_joins do |t|
      t.integer :project_id
      t.integer :tag_id
    end
  end
end
