class Post < ActiveRecord::Base
  attr_accessible :title, :text, :email, :key, :price, :category_id
  belongs_to :category
  validates_presence_of :title, :text, :email, :key
  before_validation :create_key, on: :create

  def create_key
    self.key = (0...8).map{(65+rand(26)).chr}.join
  end
end
