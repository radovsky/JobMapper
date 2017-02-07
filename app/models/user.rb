class User < ApplicationRecord
  attr_accessor :password

  EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i
  PASSWORD_REGEX = /^(?=.*[A-Z])(?=.*[0-9]).{6,62}$/i

  validates :username, presence: true, uniqueness: true, length: { in: 2..20 }
  validates :email, presence: true, uniqueness: true, format: EMAIL_REGEX
  validates :password, confirmation: true, format: PASSWORD_REGEX
end
