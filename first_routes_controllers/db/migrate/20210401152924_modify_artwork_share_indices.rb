class ModifyArtworkShareIndices < ActiveRecord::Migration[5.2]
  def change
    add_index :artwork_shares, [:artwork_id, :viewer_id], unique: true
    remove_index :artwork_shares, :artwork_id
    add_index :artwork_shares, :artwork_id
  end
end
