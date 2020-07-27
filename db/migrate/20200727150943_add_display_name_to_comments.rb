class AddDisplayNameToComments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :display_name, :string
  end
end
