class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :type
      t.integer :budget
      t.date :delivery_date
      t.integer :word_count
      t.text :special_request
      t.text :sample_text
      t.string :user_id
      t.boolean :need_translator
      t.boolean :need_transcriber
      t.boolean :need_graphic_designer

      t.timestamps
    end
  end
end
