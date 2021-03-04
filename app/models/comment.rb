class Comment < ApplicationRecord
    
    belongs_to :commenter, class_name: 'User'
    belongs_to :commentee, class_name: 'User'
    validates_uniqueness_of :content, scope: [:commenter, :commentee]
end
