class CreateBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs do |t|
      t.string :message
      t.references :blog, foreign_key: true
      t.timestamps
    end
  end
end
