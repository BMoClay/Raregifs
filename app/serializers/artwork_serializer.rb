class ArtworkSerializer < ActiveModel::Serializer
  # activestorage
  # include Rails.application.routes.url_helpers

  # def image
  #   if object.image.attached?
  #     {
  #       url: rails_blob_url(object.pro_pic)
  #     }
  #   end
  # end

  attributes :id, :user, :image, :title, :user_name, :acquiring_users

end
