class User < ApplicationRecord
    has_secure_password
    validates :name, uniqueness: { case_sensitive: false }
    has_many :artworks
    has_many :acquisitions
    # has_many :artworks, through: :acquisitions
    # has_many :acquired_artworks
    # has_many :collected_artworks, :through => :acquired_artworks, :source => "artwork"
end
