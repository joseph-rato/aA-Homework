class User < ApplicationRecord
  after_initialize :ensure_session_token
  validates :session_token, presence: true
  validates :username, :session_token, presence: true
  validates :password_digest, presence: {message: "Password can't be blank"}
  validates :password, length: {minimum: 8, allow_nil: true}
  # def password_length(password)
  #   password.length == 8
  # end

  def password=(password)
    self.password_digest = BCrypt::password.create(password)
  end

  def is_password?(password)
    BCrypt::password.new(self.password_digest).is_password?(password)
  end

  def self.generate_session_tolken
    SecureRandom::urlsafe_base64(16)
  end

  # def res

  def ensure_session_token
    self.session_token || self.class.generate_session_tolken
  end
end
