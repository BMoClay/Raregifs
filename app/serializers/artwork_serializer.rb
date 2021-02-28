class ArtworkSerializer < ActiveModel::Serializer
  belongs_to :user 
  has_many :acquisitions 
  has_many :acquiring_users, through: :acquisitions, source: :user

  attributes :id, :user_id, :user, :image, :title, :acquisitions, :acquiring_users
end
