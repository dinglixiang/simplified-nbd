class Channel < ActiveRecord::Base
  attr_accessible :link_str, :title

  has_many :columns

  validates_presence_of :title,:link_str
  validates_format_of :link_str, :with => /^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$/ix,message: "URL格式不正确"
end
