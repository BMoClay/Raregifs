class Artwork < ApplicationRecord
    belongs_to :user
    has_many :acquisitions
    # has_many :users, through: :acquisitions
end
