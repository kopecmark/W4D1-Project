class AddIndexes < ActiveRecord::Migration[5.2]
  def change
    add_column :artwork_shares, :artwork_id, :integer, null: false
    add_column :artwork_shares, :viewer_id, :integer, null: false
    add_index :artworks, :artist_id
    add_index :artwork_shares, [:artwork_id, :viewer_id]
  end
end
