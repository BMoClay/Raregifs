class ChangeArtworksIdToInt < ActiveRecord::Migration[6.1]
  def change
    remove_column :artworks, :user_id, :string
  end
end
