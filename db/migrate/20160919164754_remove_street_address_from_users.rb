class RemoveStreetAddressFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :street_address, :string
  end
end
