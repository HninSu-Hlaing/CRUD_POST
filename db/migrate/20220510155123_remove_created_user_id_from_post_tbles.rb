class RemoveCreatedUserIdFromPostTbles < ActiveRecord::Migration[6.1]
  def change
    remove_column :post_tbles, :created_user_id, :integer
  end
end
