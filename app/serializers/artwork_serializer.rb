class ArtworkSerializer < ActiveModel::Serializer
  belongs_to :user 
  has_many :acquisitions 
  # has_many :users, through: :acquisitions

  attributes :id, :title, :user_id, :image
end
