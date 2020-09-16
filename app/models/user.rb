class User < ApplicationRecord
  validates :name, presence: true
  validates :name, length: { maximum: 15}
  validates :email, presence: true
  validates :email,  format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i}
  validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?[\d])\w{8,32}\z/}
  
  has_secure_password
end
