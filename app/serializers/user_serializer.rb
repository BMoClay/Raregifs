class UserSerializer < ActiveModel::Serializer
  has_many :artworks
  has_many :acquisitions 
  # has_many :artworks, through: :acquisitions

  attributes :id, :name
end
