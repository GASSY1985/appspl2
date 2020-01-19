class CreateBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :content
      t.string :img
      t.bigint :user_id
      t.bigint :chat_id
      t.timestamps
    end
  end
end
