class Artwork < ApplicationRecord
    belongs_to :user
    has_many :acquisitions, dependent: :destroy

    def user_name
        self.user.name
    end

end
