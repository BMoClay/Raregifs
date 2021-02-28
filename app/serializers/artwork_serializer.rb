class ArtworkSerializer < ActiveModel::Serializer
  belongs_to :user 
  has_many :acquisitions 
  has_many :users, :through :acquisitions
  # has_many :acquiring_users, through: :acquisitions, :source => "acquisition"

  attributes :id, :user_id, :image, :title, :user, :acquisitions
end
