class Tag < ActiveRecord::Base
  attr_accessible :title
  has_many :posttags
  has_many :posts, through: :posttags
end
