class UserSerializer < ActiveModel::Serializer
  has_many :acquisitions 
  has_many :artworks, through: :acquisitions
  has_many :artworks
  attributes :id, :name, :artworks, :acquisitions
end
