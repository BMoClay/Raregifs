class User < ApplicationRecord
    has_secure_password
    validates :name, uniqueness: { case_sensitive: false }
    has_many :artworks
    has_many :acquisitions








    




    # has_many :acquired_artworks, through: :acquisitions
    
    # has_many :created_artworks, foreign_key: :holder_id, class_name: 'Artwork'
    # has_many :created_artworks, foreign_key: :user_id, class_name: 'Artwork'
    # has_many :acquisitions, foreign_key: :sub_user_id
    # has_many :shared_artworks, foreign_key: :artwork_id
    # has_many :acquired_artworks, through: :acquisitions, source: :user
   
   
    # has_many :artworks
    # has_many :acquisitions
    # has_many :acquired_artworks, through: :acquisitions, source: :artwork

end
