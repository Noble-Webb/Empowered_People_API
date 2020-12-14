class User < ApplicationRecord
    has_many posts, dependent: :destroy
    has_many comments, through: :posts dependent: :destroy

    has_secure_password

    validates :username, presence: true, uniqueness: true 
end
