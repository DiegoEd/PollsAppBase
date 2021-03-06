class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :user_poll_option
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  def is_normal?
  	self.permission >= 1
  end

  def is_admin?
  	self.permission >= 2
  end
end
