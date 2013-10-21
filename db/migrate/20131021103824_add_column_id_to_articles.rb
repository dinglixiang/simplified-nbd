class AddColumnIdToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :column_id, :integer,defualt: nil
  end
end
