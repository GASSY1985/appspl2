class ChangeDatatypeIdOfUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :id, :bigint, auto_increment: true
  end
end
