class AddDetailsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :user_type, :string
    add_column :users, :phone, :integer
    add_column :users, :address, :string
    add_column :users, :birthday, :date
  end
end
