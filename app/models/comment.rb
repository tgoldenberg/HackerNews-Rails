class Comment < ActiveRecord::Base
  belongs_to :comment
  has_many :comments
  belongs_to :post
  belongs_to :user
  acts_as_votable

  def nested_comments
    Comment.where(comment_id: self.id)
  end
end
