class Stoptripactivecolumn < ActiveRecord::Migration[5.0]
  def change
  	add_column :stops, :active, :boolean
  	add_column :trips, :active, :boolean
  end
end
