class Project < ApplicationRecord
  belongs_to :user

  # validates :name, presence: true
  # validates :word_count, presence: true
  # validates :sample_text, presence:true

  has_many :bids, dependent: :destroy

end
