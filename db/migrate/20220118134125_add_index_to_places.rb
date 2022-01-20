class AddIndexToPlaces < ActiveRecord::Migration[6.1]
  def change
    add_index :places, :locale
    add_index :places, :coordinate, using: :gist
    add_index :places, [:locale, :coordinate], unique: true
  end
end
