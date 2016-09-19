class AddAssignedToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :assigned, :boolean
  end
end
