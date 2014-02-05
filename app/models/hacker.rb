class Hacker < ActiveRecord::Base
  validates :username, presence: true
  validates :language, presence: true

  def self.most_popular
    group(:language).order('count_id DESC').limit(1).count('id').first.first
  end
end
