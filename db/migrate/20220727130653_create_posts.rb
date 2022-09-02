class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.text :message, null: false
      t.timestamps null: false
    end
  end
end