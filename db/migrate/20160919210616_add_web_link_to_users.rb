class AddWebLinkToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :web_link, :string
  end
end
