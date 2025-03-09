class RemoveTitleFromPosts < ActiveRecord::Migration[8.0]
  def change
    remove_column :posts, :title, :string
  end
end
