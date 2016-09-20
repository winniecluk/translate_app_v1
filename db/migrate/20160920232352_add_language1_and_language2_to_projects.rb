class AddLanguage1AndLanguage2ToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :language_1, :string
    add_column :projects, :language_2, :string
  end
end
