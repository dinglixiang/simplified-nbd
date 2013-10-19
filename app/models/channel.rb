class Channel < ActiveRecord::Base
  attr_accessible :link_str, :title

  has_many :columns
end
