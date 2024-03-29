class User < ApplicationRecord
  has_secure_password :password
  has_secure_token :auth_token
  has_many :posts

  def self.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

  def self.create_token
    SecureRandom.urlsafe_base64
  end
end
