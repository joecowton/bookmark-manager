require 'bcrypt'

class User

  include DataMapper::Resource

  property :id, Serial
  property :name, String
  property :email, String
  # property :password, Text

  property :password_digest, Text
  attr_accessor :confirmation_password
  attr_reader :password
  p :password
  p :confirmation_password

  has n, :links, :through => Resource

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  validates_confirmation_of :password
end
