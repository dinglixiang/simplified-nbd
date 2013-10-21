class CreateArticlecolumnships < ActiveRecord::Migration
  def change
    create_table :articlecolumnships do |t|
      t.integer :article_id
      t.integer :column_id

      t.timestamps
    end
  end
end
