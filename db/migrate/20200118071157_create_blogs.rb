class CreateBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs do |t|
      t.string :content
      t.string :image
      t.bigint :chat
      t.bigint :user
      t.timestamps
    end
  end
end
