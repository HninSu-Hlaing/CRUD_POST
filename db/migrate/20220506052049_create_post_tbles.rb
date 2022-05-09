class CreatePostTbles < ActiveRecord::Migration[6.1]
  def change
     
      create_table :post_tbles do |t|
      t.string :title
      t.string :description
      t.integer :status
      t.integer :created_user_id
      t.integer :updated_user_id
      t.integer :deleted_user_id
      t.datetime :deleted_at

      t.timestamps
     
    end
  end
end
