class AddColumnsToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :completed_client, :boolean
    add_column :projects, :completed_vendor, :boolean
  end
end
