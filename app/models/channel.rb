class Channel < ActiveRecord::Base
  attr_accessible :link_str, :title

  has_many :columns

  validates_presence_of :title,:link_str
end
