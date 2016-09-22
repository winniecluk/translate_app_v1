class AddAcceptedToBid < ActiveRecord::Migration[5.0]
  def change
    add_column :bids, :accepted, :boolean
  end
end
