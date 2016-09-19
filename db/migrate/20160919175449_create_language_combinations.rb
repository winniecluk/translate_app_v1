class CreateLanguageCombinations < ActiveRecord::Migration[5.0]
  def change
    create_table :language_combinations do |t|
      t.string :language_1
      t.string :language_2

      t.timestamps
    end
  end
end
