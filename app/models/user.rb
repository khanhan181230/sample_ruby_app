class User < ApplicationRecord
  NAME_MAX_LENGTH = 50
  EMAIL_MAX_LENGTH = 255
  PASSWORD_MIN_LENGTH = 6
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  before_save { self.email = email.downcase } # or you can use "email.downcase!" as alternative
  validates :name, presence: true, length: { maximum: NAME_MAX_LENGTH }
  validates :email, presence: true, length: { maximum: EMAIL_MAX_LENGTH }, format: { with: VALID_EMAIL_REGEX }, uniqueness: true
  has_secure_password
  validates :password, presence: true, length: { minimum: PASSWORD_MIN_LENGTH }
end
