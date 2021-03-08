class Artwork < ApplicationRecord
    # activestorage
    # has_one_attached :image
    
    belongs_to :user
    has_many :acquisitions, dependent: :destroy
    has_many :acquiring_users, through: :acquisitions, source: :user, dependent: :destroy

    def user_name
        self.user.name
    end

end
