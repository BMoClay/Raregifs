class User < ApplicationRecord
    has_many :artworks
    has_many :acquisitions
    has_many :artworks, through: :acquisitions
end
