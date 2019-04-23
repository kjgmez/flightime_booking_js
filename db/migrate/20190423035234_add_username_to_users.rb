class AddUsernameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :user_name, :string
    add_index :users, :user_name, unique: true
    add_column :users, :name, :string
    add_column :users, :balance, :integer
    add_column :users, :level, :integer
  end
end
