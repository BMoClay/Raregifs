class AddUserIdIntToAcquisitions < ActiveRecord::Migration[6.1]
  def change
    add_column :acquisitions, :user_id, :integer
  end
end
