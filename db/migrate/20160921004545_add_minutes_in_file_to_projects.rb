class AddMinutesInFileToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :minutes_in_file, :float
  end
end
