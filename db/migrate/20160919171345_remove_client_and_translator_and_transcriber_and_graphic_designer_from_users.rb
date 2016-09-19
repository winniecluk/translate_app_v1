class RemoveClientAndTranslatorAndTranscriberAndGraphicDesignerFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :client, :string
    remove_column :users, :translator, :string
    remove_column :users, :transcriber, :string
    remove_column :users, :graphic_designer, :string
  end
end
