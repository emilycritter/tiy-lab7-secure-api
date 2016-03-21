class Comment < ActiveRecord::Base
  belongs_to :posts
  validates :post_id, :comment_text, presence: true
end
