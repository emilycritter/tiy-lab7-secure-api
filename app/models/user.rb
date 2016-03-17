class User < ActiveRecord::Base
  has_many :posts, dependent: :destroy
  has_secure_password

  validates :username, presence: true

  ## Remove the uniqueness validation so I can re-run `api-runner.rb` while testing.
  # validates :username, uniqueness: true
end
