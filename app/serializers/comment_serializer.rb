class CommentSerializer < ActiveModel::Serializer
  # belongs_to :commenter, class_name: 'User'
  # belongs_to :commentee, class_name: 'User'

  attributes :id, :commentee_id, :commenter_id, :content
end
