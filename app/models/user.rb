require 'bcrypt'

class User

  include DataMapper::Resource

  property :id, Serial
  property :name, String
  property :email, String
  property :hashed_password, Text

  def password=(password)
  	self.hashed_password = BCrypt::Password.create(password)
  end

  has n, :links, :through => Resource
end
