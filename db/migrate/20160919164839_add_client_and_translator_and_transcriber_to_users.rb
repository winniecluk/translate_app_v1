class AddClientAndTranslatorAndTranscriberToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :client, :boolean
    add_column :users, :translator, :boolean
    add_column :users, :transcriber, :boolean
    add_column :users, :graphic_designer, :boolean
  end
end
