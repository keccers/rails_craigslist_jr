class Category < ActiveRecord::Base
  attr_accessible :title, :description
  has_many :posts
  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
end
