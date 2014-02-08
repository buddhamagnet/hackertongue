class Hacker < ActiveRecord::Base
  validates :username, presence: true
  validates :language, presence: true

  default_scope { order('username ASC') }

  def self.most_popular
    group(:language).order(:id).count.keys.first
  end
end
