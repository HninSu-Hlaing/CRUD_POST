class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users,id: false ,primary_key: :user_id do |t|
      t.primary_key :user_id
      t.string :username
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
