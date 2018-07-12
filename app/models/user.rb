class User < ApplicationRecord
  before_create :crypt_password
  
  CONTANTS_VARIABLE = 'a'.freeze
  
  def crypt_password(decrypt_pass)
    self.password = Digest::SHA1.hexdigest('#{decrypt_pass}')
  end
  
end
