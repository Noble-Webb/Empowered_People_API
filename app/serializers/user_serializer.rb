class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :profile_pic, :family, :map_suggestion

  has_many :posts 
  has_many :comments, through: :posts 

end
