class Comment < ApplicationRecord
    
    belongs_to :commenter, class_name: 'User'
    belongs_to :commentee, class_name: 'User'
    validates_uniqueness_of :comment, scope: [:commenter, :commentee]
end
