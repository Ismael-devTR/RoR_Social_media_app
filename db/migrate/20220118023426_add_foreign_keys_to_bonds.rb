class AddForeignKeysToBonds < ActiveRecord::Migration[6.1]
  def change
      add_foreign_key :bonds, :users, column: :user_id
      add_foreign_key :bonds, :users, column: :friend_id
  end
end
