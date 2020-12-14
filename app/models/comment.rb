class Comment < ApplicationRecord
    belongs_to :post 
    belongs_to :user 

    Validates :text, presence: true 
end
