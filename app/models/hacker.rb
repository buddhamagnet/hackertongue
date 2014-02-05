class Hacker < ActiveRecord::Base
	validates :username, presence: true
	validates :language, presence: true

	scope :most_popular, -> { group(:language).order('count_id DESC').limit(1).count('id') }
end
