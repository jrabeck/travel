class Tripstatus < ActiveRecord::Migration[5.0]
  def change
  	remove_column :trips, :active, :boolean
  	add_column :trips, :active, :string
  end
end
