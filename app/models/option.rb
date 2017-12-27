class Option < ApplicationRecord
  belongs_to :question
  has_many :user_poll_option

  def count_responses
  	@count = UserPollOption.where(option_id: self.id).count
  end
end
