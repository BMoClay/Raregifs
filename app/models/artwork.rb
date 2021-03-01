class Artwork < ApplicationRecord
    belongs_to :user
    has_many :acquisitions

    def user_name
        self.user.name
    end












    # has_many :users, through: :acquisitions


















    # has_many :acquiring_users, through: :acquisitions

    # has_many :shared_artworks, foreign_key: :acquisition_id
    # has_many :acquisitions, foreign_key: :acquisition_id
    # has_many :acquiring_users, through: :shared_artworks, source: :sub_user
    # has_many :acquiring_users, through: :acquisitions, source: :sub_user

    # belongs_to :user
    # has_many :acquisitions
    # has_many :acquiring_users, through: :acquisitions, source: :user

end
