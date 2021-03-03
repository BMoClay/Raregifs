class UserSerializer < ActiveModel::Serializer
  has_many :acquisitions
  has_many :artworks

  has_many :comments_received, class_name: 'Comment', foreign_key: :commentee_id
  has_many :comments_made, class_name: 'Comment', foreign_key: :commenter_id

  attributes :id, :name, :artworks, :acquisitions, :comments_received, :comments_made









  
   # has_many :commenting_users, foreign_key: :commenter_id, class_name: 'Comment'
  # has_many :comments_received, through: :commenting_users, source: :commenter
  # has_many :commented_on_users, foreign_key: :commentee_id, class_name: 'Comment'
  # has_many :comments_made, through: :commented_on_users, source: :commentee






  







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
