class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.text :caption
      t.integer :place_id
      t.integer :user_id
      t.timestamps
      t.string :picture
    end
    
    add_index :photos, [:user_id, :place_id] #set up index to look up photo by user and place ID.
    add_index :photos, :place_id #set up index to look up photo by user ID only
  end
end
