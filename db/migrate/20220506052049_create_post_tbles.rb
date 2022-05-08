class CreatePostTbles < ActiveRecord::Migration[6.1]
  def change
   # belongs_to :users , class_name: 'CreateUsers',foreign_key: 'user_id'
    create_table :post_tbles do |t|
      t.string :title
      t.string :description
      t.integer :status
      t.integer :created_user_id
      t.integer :updated_user_id
      t.integer :deleted_user_id
      t.datetime :deleted_at

      t.timestamps
      t.references :user_id, references: :users,null: false
    end
  end
end
