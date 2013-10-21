class Column < ActiveRecord::Base
  attr_accessible :title,:channel_id

 belongs_to :channel
end
