class AddUserIdIntToArtworks < ActiveRecord::Migration[6.1]
  def change
    add_column :artworks, :user_id, :integer
  end
end
