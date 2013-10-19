class Article < ActiveRecord::Base
  attr_accessible :digest, :publisher, :state, :title


  STATE = ["draft","published","banned"]
  
  scope :draft,where(state: "draft")
  scope :published,where(state: "published")
  scope :banned,where(state: "banned")
end
