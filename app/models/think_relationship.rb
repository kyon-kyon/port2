class ThinkRelationship < ApplicationRecord
    belongs_to :think_follower, class_name: "Think"
    belongs_to :think_followed, class_name: "Think"
    validates :think_follower_id, presence: true
    validates :think_followed_id, presence: true
end
