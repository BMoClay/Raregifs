class User < ApplicationRecord
    has_secure_password
    validates :name, uniqueness: { case_sensitive: false }
    has_many :artworks
    has_many :acquisitions
    has_many :acquired_artworks, through: :acquisitions, source: :artwork

end
