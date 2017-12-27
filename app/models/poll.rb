class Poll < ApplicationRecord
	has_many :questions
	has_many :user_poll_option
	has_many :options
end
