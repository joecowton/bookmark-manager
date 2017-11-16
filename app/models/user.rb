require 'bcrypt'

class User

  attr_reader :password
  attr_accessor :confirm_password

  include DataMapper::Resource

  property :id, Serial
  property :name, String
  property :email, String
  property :password, Text
  property :password_digest, Text
  validates_confirmation_of :password

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  has n, :links, :through => Resource
end
