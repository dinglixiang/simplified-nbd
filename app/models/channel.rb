class Channel < ActiveRecord::Base
  attr_accessible :link_str, :title

  #acts_as_taggable

  has_many :columns
end
