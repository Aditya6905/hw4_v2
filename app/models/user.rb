
class User < ApplicationRecord
  has_many :places


  def authenticate(password)
    self.password == password
  end
end