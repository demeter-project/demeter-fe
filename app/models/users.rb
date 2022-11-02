class User < ApplicationRecord
  has_secure_password

  def self.from_omniauth(response)
    User.find_or_create_by(uid: response[:uid], provider: response[:provider]) do |user|
      user.username = response[:info][:name]
      user.email = response[:info][:email]
      user.password = SecureRandom.hex(15)
    end
  end
end
