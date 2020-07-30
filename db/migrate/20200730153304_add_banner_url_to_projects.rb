class AddBannerUrlToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :banner_url, :string
  end
end
