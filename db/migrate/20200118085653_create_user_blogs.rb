class CreateUserBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :user_blogs do |t|
      t.references :blog, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
