class Post < ActiveRecord::Base
  attr_accessor :tag_list
  attr_accessible :title, :text, :email, :key, :price, :category_id, :tag_list
  belongs_to :category
  has_many :posttags
  has_many :tags, through: :posttags
  validates_presence_of :title, :text, :email, :key
  before_validation :create_key, on: :create
  before_save :create_tag_list

  def create_key
    self.key = (0...8).map{(65+rand(26)).chr}.join
  end

  def create_tag_list
      tag_list.split(",").each { |tag| tags << Tag.find_or_create_by_title(tag.strip) }
  end

end
