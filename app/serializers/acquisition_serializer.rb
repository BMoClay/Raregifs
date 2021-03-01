class AcquisitionSerializer < ActiveModel::Serializer
  # belongs_to :user
  belongs_to :artwork

  attributes :id, :user, :artwork














  # belongs_to :sub_user, class_name: 'User'
  # belongs_to :acquisition, class_name: 'Acquisition'
  # belongs_to :shared_artwork, class_name: 'Acquisition'

  # belongs_to :user
  # belongs_to :artwork 

  # attributes :id, :user, :artwork, :user_id, :artwork_id
  
end
