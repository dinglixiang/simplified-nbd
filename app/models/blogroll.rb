class Blogroll < ActiveRecord::Base
  attr_accessible :title, :url
  validates_presence_of :title,:url
end
