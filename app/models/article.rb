class Article < ActiveRecord::Base
  attr_accessible :digest, :publisher, :state, :title

  has_many :articlecolumnships
  has_many :columns,:through => :articlecolumnships

  validates_presence_of :title,:digest,:publisher
  
  scope :draft,where(state: "draft")
  scope :published,where(state: "published")
  scope :banned,where(state: "banned")


  default_scope :order => 'created_at DESC'

  searchable do
		text :title, :digest  	
  end

end
