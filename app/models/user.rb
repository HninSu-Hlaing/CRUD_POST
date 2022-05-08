class User < ApplicationRecord
    has_secure_password
    #self.primary_key = 'user_id'
    #has_many :post_tble, primary_key: 'user_id', foreign_key: 'created_user_id'
end
