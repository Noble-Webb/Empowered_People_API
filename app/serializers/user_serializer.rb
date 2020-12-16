class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :profile_pic, :kingdom

  has_many :posts 
  has_many :comments 

end
