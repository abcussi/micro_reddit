class User < ApplicationRecord
  has_many :posts
  has_many :coments
  validates :username, uniqueness: true, presence: true, length: { maximum: 20, minimum: 3 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
  validates :email, uniqueness: true, presence: true, format: { with: VALID_EMAIL_REGEX }
  validates :password, presence: true, length: { minimum: 5, maximum: 20 }
  has_secure_password
end
