class AddUserToPostTbles < ActiveRecord::Migration[6.1]
  def change
    add_reference :post_tbles, :user
  end
end
