require 'digest'

class User < ApplicationRecord

  before_create { encrypt_token(new_token) }

  def new_token
    SecureRandom.urlsafe_base64
  end

  def encrypt_token(token)
    Digest::SHA1.hexdigest token
  end

  has_secure_password
end
