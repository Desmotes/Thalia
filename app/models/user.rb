class User < ApplicationRecord

  def self.authenticate(username="", password="")
    user = User.find_by_username(username)
    puts user
    if user && user.match_password(password)
      return user
    else
      return false
    end
  end

  def match_password(login_password="")
    encrypted_password = Digest::MD5.new
    encrypted_password.update login_password

    v1 = encrypted_password
    v2 = password
    if v1 == v2
      return true
    else
      return false
    end
  end

end
