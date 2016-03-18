class User < ActiveRecord::Base
  validates :username, presence: true

  ## Remove the uniqueness validation so I can re-run `api-runner.rb` while testing.
  # validates :username, uniqueness: true
end
