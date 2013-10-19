class Column < ActiveRecord::Base
  attr_accessible :title

  belongs_to :channel
end
