class Column < ActiveRecord::Base
  attr_accessible :title,:channel_id

 belongs_to :channel
 has_many :articlecolumnships
 has_many :articles,:through => :articlecolumnships

 validates_presence_of :title
end
