class RenameBlogIdColumnToBlogs < ActiveRecord::Migration[5.2]
  def change
    rename_column :blogs, :blog_id, :user_id
  end
end
