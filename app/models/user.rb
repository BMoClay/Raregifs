class User < ApplicationRecord
    has_secure_password
    validates :name, uniqueness: { case_sensitive: false }
    
    def self.find_or_create_from_google(payload)
        User.where(name: payload["name"]).first_or_create do |new_user|
        # User.where(name: payload["email"]).first_or_create do |new_user|
              new_user.name = payload["name"]
              # new_user.name = payload["email"]
              new_user.password = SecureRandom.base64(15)
            end
    end

    has_many :artworks
    has_many :acquisitions, dependent: :destroy
    
    has_many :comments_received, class_name: 'Comment', foreign_key: :commentee_id, dependent: :destroy
    has_many :commenting_users, through: :comments_received, source: :commenter, dependent: :destroy
    has_many :comments_made, class_name: 'Comment', foreign_key: :commenter_id
    has_many :commented_on_users, through: :comments_made, source: :commentee

end





# before_destroy :destroy_comments_received

# def destroy_comments_received
#     comments_received.destroy unless user.acquisitions
# end