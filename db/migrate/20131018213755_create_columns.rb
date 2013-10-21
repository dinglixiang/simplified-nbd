class CreateColumns < ActiveRecord::Migration
  def change
    create_table :columns do |t|
      t.belongs_to :channel
      t.string :title

      t.timestamps
    end
  end
end
