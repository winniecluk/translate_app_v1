class User < ApplicationRecord

  has_secure_password
  has_many :projects

  validates :password, length: {minimum: 6, maximum: 20}

end
