class AddMessageToBid < ActiveRecord::Migration[5.0]
  def change
    add_column :bids, :message, :text
  end
end
