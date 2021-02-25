class Artwork < ApplicationRecord
    has_many :acquisitions
    has_many :users, through: :acquisitions
    belongs_to :user
    # has_one :creating_user, :class_name: 'User', foreign_key: user_id
    # has_many :acquiring_users, through: :acquired_artworks, class_name: 'Artwork', foreign_key: user_id

end
