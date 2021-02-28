class Artwork < ApplicationRecord
    belongs_to :user
    has_many :acquisitions
    has_many :acquiring_users, through: :acquisitions, source: :user
end
