class AddVendorIdToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :vendor_id, :integer
  end
end
