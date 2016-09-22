class AddFNameAndLNameToBids < ActiveRecord::Migration[5.0]
  def change
    add_column :bids, :f_name, :string
    add_column :bids, :l_name, :string
  end
end
