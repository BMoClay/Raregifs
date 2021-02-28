class RemoveAcquisitionsId < ActiveRecord::Migration[6.1]
  def change
    remove_column :acquisitions, :artwork_id, :string
  end
end
