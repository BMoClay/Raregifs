class AcquisitionSerializer < ActiveModel::Serializer
  belongs_to :user
  belongs_to :artwork 

  
  attributes :id, :user_id, :artwork_id
end
