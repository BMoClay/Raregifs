class UserSerializer < ActiveModel::Serializer
  has_many :acquisitions
  has_many :artworks

  attributes :id, :name, :artworks, :acquisitions






  







  # has_many :acquired_artworks, through: :acquisitions

  # has_many :created_artworks, foreign_key: :user_id, class_name: 'Artwork'
  # has_many :acquisitions, foreign_key: :sub_user_id
  # has_many :shared_artworks, foreign_key: :artwork_id
  # has_many :acquired_artworks, through: :acquisitions, source: :user



  # has_many :artworks
  # has_many :acquisitions 
  # has_many :acquired_artworks, through: :acquisitions, source: :artwork

  # attributes :id, :name, :artworks, :acquisitions, :acquired_artworks
end
