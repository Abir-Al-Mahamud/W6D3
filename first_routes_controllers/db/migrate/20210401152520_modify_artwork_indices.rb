class ModifyArtworkIndices < ActiveRecord::Migration[5.2]
  def change
    remove_index :artworks, [:artist_id, :title]
    add_index :artworks, [:title, :artist_id], unique: true
  end
end
