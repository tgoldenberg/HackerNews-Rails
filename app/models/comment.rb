class Comment < ActiveRecord::Base
  belongs_to :comment
  has_many :comments
  belongs_to :post
  belongs_to :user
end
