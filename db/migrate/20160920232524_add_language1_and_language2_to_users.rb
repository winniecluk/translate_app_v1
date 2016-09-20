class AddLanguage1AndLanguage2ToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :language_1, :string
    add_column :users, :language_2, :string
  end
end
