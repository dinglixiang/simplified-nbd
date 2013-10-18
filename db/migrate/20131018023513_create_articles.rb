class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :digest
      t.string :publisher
      t.string :state,:default => "draft"

      t.timestamps
    end
  end
end
