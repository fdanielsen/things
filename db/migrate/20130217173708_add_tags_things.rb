class AddTagsThings < ActiveRecord::Migration
  def change
    create_table :tags_things do |t|
      t.belongs_to :tag
      t.belongs_to :thing
    end

    add_index :tags_things, :tag_id
    add_index :tags_things, :thing_id
  end
end
