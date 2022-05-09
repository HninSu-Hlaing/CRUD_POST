class User < ApplicationRecord
    validates :email,presence: true,format: {with: /\A[^@\s]+@[^@\s]+\z/,message: "must be a valid email address"}
    has_secure_password
    has_many :post_tbles
end
