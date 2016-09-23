class User < ApplicationRecord

  has_secure_password
  has_many :projects, dependent: :destroy
  has_many :bids, dependent: :destroy

  has_attached_file :avatar, styles: { thumb: "150x150#" }
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  validates :password, length: {minimum: 6, maximum: 20}
  validates :email, presence: true, uniqueness: true

  def ata_certified?
    "yes" if judicial_court else "no" end
  end

  def judicial_court?
    "yes" if judicial_court else "no" end
  end

  def trados?
    "yes, " + trados_version if trados else "no" end
  end

  def available?
    "yes" if available else "no" end
  end

  # def unassigned_project?
  #   project.accepted_bid_id.nil?
  # end

  # def no_projects?
  #   projects.select { |project| }
  # end
end
