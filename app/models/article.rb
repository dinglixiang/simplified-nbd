class Article < ActiveRecord::Base
  attr_accessible :digest, :publisher, :state, :title,:column_list

  acts_as_taggable_on :columns
  STATE = ["draft","published","banned"]
  
  scope :draft,where(state: "draft")
  scope :published,where(state: "published")
  scope :banned,where(state: "banned")
end
