class User < ApplicationRecord

  has_secure_password
  has_many :projects, dependent: :destroy
  has_many :bids, dependent: :destroy

  has_attached_file :avatar, styles: { thumb: "150x150#" }
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  validates :password, length: {minimum: 6, maximum: 20}
  validates :email, presence: true, uniqueness: true
end
