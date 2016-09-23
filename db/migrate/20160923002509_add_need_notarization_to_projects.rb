class AddNeedNotarizationToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :need_notarization, :boolean
  end
end
