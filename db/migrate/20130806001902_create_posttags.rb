class CreatePosttags < ActiveRecord::Migration
  def change
    create_table :posttags do |t|
      t.belongs_to :tag
      t.belongs_to :post
      t.timestamps
    end
  end
end
