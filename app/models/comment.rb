class Comment < ActiveRecord::Base
  belongs_to :post
  
  validates :email, :presence => true
  validates :content, :presence => true
end
