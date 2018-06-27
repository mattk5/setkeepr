class User < ApplicationRecord
  before_save { email.downcase! }
  validates :name, presence: true, length: { maximum: 60 }
  validates :email, presence: true, length: { maximum: 200 }, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }

  has_secure_password
end
