class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :comment
      t.integer :commenter_id
      t.integer :commentee_id
      
      t.timestamps
    end
  end
end
