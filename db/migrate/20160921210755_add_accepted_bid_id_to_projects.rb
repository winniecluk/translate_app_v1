class AddAcceptedBidIdToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :accepted_bid_id, :integer
  end
end
