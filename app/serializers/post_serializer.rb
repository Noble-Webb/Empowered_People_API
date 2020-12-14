class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :upvote, :user_id
  
  has_many :comments
end
