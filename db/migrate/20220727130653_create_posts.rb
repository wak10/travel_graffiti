class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.text :message, null: false
      t.string :address, null: false
      t.float :latitude,	null: false
      t.float :longitude,	null: false
      t.timestamps
    end
  end
end
