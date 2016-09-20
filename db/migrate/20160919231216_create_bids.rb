class CreateBids < ActiveRecord::Migration[5.0]
  def change
    create_table :bids do |t|
      t.references :project, foreign_key: true
      t.references :user, foreign_key: true
      t.float :budget
      t.date :delivery_date

      t.timestamps
    end
  end
end
