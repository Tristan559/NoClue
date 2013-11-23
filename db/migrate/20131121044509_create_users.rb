class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.string :email
      t.integer :num_logins
    end
    add_index :users, :name
    add_index :users, :email
  end
end
