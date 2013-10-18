class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :digest
      t.string :publisher
      t.string :state

      t.timestamps
    end
  end
end
