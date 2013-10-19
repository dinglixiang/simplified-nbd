class AddChannelIdToColumns < ActiveRecord::Migration
  def change
    add_column :columns, :channel_id, :integer
  end
end
