class AddColumnsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :company, :string
    add_column :users, :position, :string
    add_column :users, :rate_per_word, :float
    add_column :users, :minimum_rate, :float
    add_column :users, :rush_rate_per_word, :float
    add_column :users, :rush_minimum, :float
    add_column :users, :specialization, :string
    add_column :users, :ata_certified, :boolean
    add_column :users, :judicial_court, :boolean
    add_column :users, :trados, :boolean
    add_column :users, :trados_version, :string
    add_column :users, :available, :boolean
    add_column :users, :notary_fee, :float
    add_column :users, :rate_per_minute, :float
    add_column :users, :rate_per_work_hour, :float
    add_column :users, :rush_rate_per_minute, :float
  end
end
