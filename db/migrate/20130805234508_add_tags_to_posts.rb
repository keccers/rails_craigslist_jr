class AddTagsToPosts < ActiveRecord::Migration
  def up
    add_column :posts, :tag_list, :string
  end

  def down
    remove_column :posts, :tag_list, :string
  end
end
