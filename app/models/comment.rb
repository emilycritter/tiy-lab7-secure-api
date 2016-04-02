class Comment < ActiveRecord::Base
  belongs_to :post
  validates :post_id, :comment_text, presence: true
end
