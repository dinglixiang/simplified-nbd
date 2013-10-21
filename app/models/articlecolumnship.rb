class Articlecolumnship < ActiveRecord::Base
  attr_accessible :article_id, :column_id

  belongs_to :article
  belongs_to :column
end
