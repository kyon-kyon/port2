class Think < ApplicationRecord
  belongs_to :user
  
  has_many :active_relationships, class_name: "ThinkRelationship",
                                  foreign_key: "think_follower_id",
                                  dependent: :destroy
  has_many :passive_relationships, class_name: "ThinkRelationship",
                                   foreign_key: "think_followed_id",
                                   dependent: :destroy                                
  has_many :following, throught: :active_relationships, source: :think_followed
  has_many :followers, through: :passive_relationships, source: :think_follower



  def follow(other_think)
    following << other_think
  end

  # ユーザーをフォロー解除する
  def unfollow(other_think)
    active_relationships.find_by(followed_id: other_user.id).destroy
  end

  # 現在のユーザーがフォローしてたらtrueを返す
  def following?(other_think)
    following.include?(other_think)
  end
  
end