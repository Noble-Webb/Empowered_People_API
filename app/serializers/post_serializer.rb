class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :upvote, :user_id, :author
  
  has_many :comments
end
