class Project < ApplicationRecord
  belongs_to :user

  has_attached_file :document
  validates_attachment :document, content_type: { content_type: "application/pdf" }
  # validates :name, presence: true
  # validates :word_count, presence: true
  # validates :sample_text, presence:true

  has_many :bids, dependent: :destroy

  # has_one :vendor,
  #   class_name: "User"

  def accepted_bid
    Bid.find(accepted_bid_id) if accepted_bid_id
  end

  def assigned_vendor
    User.find(vendor_id) if vendor_id
  end

end
