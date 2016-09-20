class AddColumnsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :is_client, :boolean
    add_column :users, :is_translator, :boolean
    add_column :users, :is_transcriber, :boolean
    add_column :users, :is_graphic_designer, :boolean
  end
end
