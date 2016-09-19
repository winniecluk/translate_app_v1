class AddKindToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :kind, :string
  end
end
