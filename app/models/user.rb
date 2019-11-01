class User < ApplicationRecord
  has_secure_password :password
  has_secure_token :auth_token
end
