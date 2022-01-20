class AddIndexToBonds < ActiveRecord::Migration[6.1]
  def change
    add_index :bonds, [:user_id, :friend_id], unique: true
  end
end
