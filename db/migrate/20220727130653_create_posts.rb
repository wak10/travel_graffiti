class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.text :message
      t.string :address
      t.float :latitude
      t.float :longitude
      t.timestamps
    end
  end
end
