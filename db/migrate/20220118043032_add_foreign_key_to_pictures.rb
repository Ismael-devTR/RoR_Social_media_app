class AddForeignKeyToPictures < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :pictures, :posts
  end
end
