class RemoveJobFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :job, :string
  end
end
