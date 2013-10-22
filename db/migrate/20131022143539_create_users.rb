class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :login
      t.string :salt
      t.string :hashed_password

      t.timestamps
    end
  end
end
