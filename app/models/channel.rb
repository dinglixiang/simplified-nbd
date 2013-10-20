class Channel < ActiveRecord::Base
  attr_accessible :link_str, :title,:tag_list

  acts_as_taggable

  #has_many :columns
end
