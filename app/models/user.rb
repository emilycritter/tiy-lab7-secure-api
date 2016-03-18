class User < ActiveRecord::Base
  validates :username, :password, presence: true
  has_secure_password
  ## Remove the uniqueness validation so I can re-run `api-runner.rb` while testing.
  # validates :username, uniqueness: true
end
