class Article < ActiveRecord::Base
  attr_accessible :digest, :publisher, :state, :title
end
