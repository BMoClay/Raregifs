class CreateArtworks < ActiveRecord::Migration[6.1]
  def change
    create_table :artworks do |t|
      t.string :user_id
      t.string :title
      t.string :image

      t.timestamps
    end
  end
end
