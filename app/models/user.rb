class User < ActiveRecord::Base
  #attr_accessible :hashed_password, :login, :salt

  validates :login, :presence => true

  def password
  	@password
  end

  def password=(pass)
  	return unless pass
	  @password=pass
	  generate_password(pass)
  end

  def authentication(user,password)
    if Digest::SHA256.hexdigest(password + user.salt)==user.hashed_password
      return true
    end
    false
  end

  private 
  def generate_password(pass)
  	self.salt = Array.new(10){rand(1024).to_s(36)}.join
    self.hashed_password = Digest::SHA256.hexdigest(pass+salt)
  end

end
