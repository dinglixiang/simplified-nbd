class Article < ActiveRecord::Base
  attr_accessible :digest, :publisher, :state, :title

  has_many :articlecolumnships
  has_many :columns,:through => :articlecolumnships
  #accepts_nested_attributes_for :articlecolumnship

  #acts_as_taggable_on :columns
  STATE = ["draft","published","banned"]
  
  scope :draft,where(state: "draft")
  scope :published,where(state: "published")
  scope :banned,where(state: "banned")


  default_scope :order => 'created_at DESC'

end
