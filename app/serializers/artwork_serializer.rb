class ArtworkSerializer < ActiveModel::Serializer
  belongs_to :user 
  has_many :acquisitions 
  # has_many :users, through: :acquisitions

  attributes :id, :user_id, :image, :title
end
