class AddArtworkIdIntToAcquisitions < ActiveRecord::Migration[6.1]
  def change
    add_column :acquisitions, :artwork_id, :integer
  end
end
