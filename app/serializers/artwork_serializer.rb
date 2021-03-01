class ArtworkSerializer < ActiveModel::Serializer
  # belongs_to :user
  # has_many :acquisitions

  attributes :id, :user, :image, :title, :user_name
  # attributes :id, :user, :image, :title, :acquisitions












  # has_many :users, through: :acquisitions
  # attributes :id, :user, :users, :image, :title, :acquisitions














  # has_many :acquiring_users, through: :acquisitions

  # has_many :shared_artworks, foreign_key: :acquisition_id
  # has_many :acquisitions, foreign_key: :acquisition_id
  # has_many :acquiring_users, through: :shared_artworks, source: :sub_user
  # has_many :acquiring_users, through: :acquisitions, source: :sub_user
  

  # attributes :id, :user_id, :user, :image, :title, :shared_artworks, :acquiring_users

  # belongs_to :user 
  # has_many :acquisitions 
  # has_many :acquiring_users, through: :acquisitions, source: :user

  # attributes :id, :user_id, :user, :image, :title, :acquisitions, :acquiring_users
end
