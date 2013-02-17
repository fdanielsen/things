class CreateThings < ActiveRecord::Migration
  def change
    create_table :things do |t|
      t.string :title
      t.string :image_url
      t.text :description
      t.integer :likes_count

      t.timestamps
    end
  end
end
