class Blogroll < ActiveRecord::Base
  attr_accessible :title, :url
  validates_presence_of :title,:url
  validates_format_of :url, :with => /^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$/ix,message: "URL格式不正确"
end
