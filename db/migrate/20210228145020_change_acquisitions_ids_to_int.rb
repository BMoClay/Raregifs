class ChangeAcquisitionsIdsToInt < ActiveRecord::Migration[6.1]
  def change
    remove_column :acquisitions, :user_id, :string
  end
end
