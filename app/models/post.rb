class Post < ActiveRecord::Base
  has_many :comments
  
  validates :author, :presence => true, :length => {:maximum => 30}
  validates :title, :presence => true, :length => {:maximum => 100}
  validates :content, :presence => true
  
  acts_as_taggable
  
  def tags=(tags)
    self.tag_list = tags
  end

  def tags
    self.tag_list.join(", ")
  end
end
