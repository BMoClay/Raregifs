class UserSerializer < ActiveModel::Serializer
  has_many :artworks
  has_many :acquisitions 
  has_many :acquired_artworks, through: :acquisitions, source: :artwork

  attributes :id, :name, :artworks, :acquisitions, :acquired_artworks
end
