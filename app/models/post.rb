class Post < ActiveRecord::Base
  belongs_to :users
  validates :title, :user_id, presence: true
end
