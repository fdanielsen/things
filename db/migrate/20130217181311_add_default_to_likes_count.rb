class AddDefaultToLikesCount < ActiveRecord::Migration
  def up
    Thing.update_all likes_count: 0
    change_column :things, :likes_count, :integer, default: 0, null: false
  end

  def down
    change_column :things, :likes_count, :integer, default: nil, null: true
  end
end
