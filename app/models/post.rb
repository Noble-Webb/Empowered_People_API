class Post < ApplicationRecord
    belongs_to :user
    has_many :comments, dependent: :destroy

    validates :content, :title, presence: true 
    validates :content, length: {maximum: 300}
end
