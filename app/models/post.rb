class Post < ActiveRecord::Base
  attr_accessible :title, :text, :email, :key, :price, :category_id
  belongs_to :category
  validates_presence_of :title, :text, :email, :key
end
