class AddArticleIdToColumns < ActiveRecord::Migration
  def change
    add_column :columns, :article_id, :integer
  end
end
