class User < ApplicationRecord
  has_many :twitter_accounts
  has_many :tweets

  has_secure_password

  validates :email, presence: true, uniqueness: true
  validates :password, :password_confirmation, presence: true, length: { in: 6..20 }
end
