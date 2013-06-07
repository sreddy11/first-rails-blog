class Comment < ActiveRecord::Base
  attr_accessible :username, :body

  validates :username, :presence => :true
  validates :body, :presence => :true

  belongs_to :post
end



