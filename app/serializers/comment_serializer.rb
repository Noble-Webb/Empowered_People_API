class CommentSerializer < ActiveModel::Serializer
  attributes :id, :text, :post_id, :user_id

  belongs_to :user
  belongs_to :post 
end
