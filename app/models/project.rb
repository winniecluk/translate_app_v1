class Project < ApplicationRecord
  belongs_to :user

  has_attached_file :document
  validates_attachment :document, content_type: { content_type: "application/pdf" }

  has_attached_file :completed_document
  validates_attachment :completed_document, content_type: { content_type: "application/pdf" }

  has_many :bids, dependent: :destroy

  # has_one :vendor,
  #   class_name: "User"

  def accepted_bid
    Bid.find(accepted_bid_id) if accepted_bid_id
  end

  def assigned_vendor
    User.find(vendor_id) if vendor_id
  end

  # def needs
  #   output_arr = []
  #   output = ""
  #   output_arr.push("need translator") if need_translator
  #   output_arr.push("need transcriber") if need_transcriber
  #   output_arr.push("need graphic designer") if need_graphic_designer
  #   output_arr.push("need notarization") if need_notarization
  #   if output_arr.length > 1
  #     output_arr.each do |string, index|
  #       if index == output_arr.length-1
  #         output += string
  #       else
  #         output += string + ", "
  #       end
  #     end
  #   else
  #     output = output_arr[0]
  #   end
  #   return output
  # end

end
