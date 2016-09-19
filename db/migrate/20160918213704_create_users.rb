class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :f_name
      t.string :l_name
      t.string :email
      t.string :password_digest
      t.string :phone_number
      t.string :street_address
      t.string :city
      t.string :zip_code, limit: 10
      t.string :country
      t.string :time_zone
      t.text :bio
      t.string :user_picture

      t.timestamps
    end
  end
end
