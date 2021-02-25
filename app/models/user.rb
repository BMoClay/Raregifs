class User < ApplicationRecord
    has_secure_password
    validates :name, uniqueness: { case_sensitive: false }
    has_many :acquisitions
    has_many :artworks, through: :acquisitions
    has_many :artworks
    # has_many :created_artworks, foreign_key: creating_user_id, class_name: 'Artwork'
    # has_many :acquired_artworks, foreign_key: acquiring_user_id, class_name: 'Artwork'
    # has_many :acquiring_users, through: acquired_artworks

end
