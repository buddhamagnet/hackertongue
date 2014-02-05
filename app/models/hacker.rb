class Hacker < ActiveRecord::Base
  validates :username, presence: true
  validates :language, presence: true
end
