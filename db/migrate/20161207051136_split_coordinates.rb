class SplitCoordinates < ActiveRecord::Migration[5.0]
  def change
  	add_column :stops, :longitude, :float
		add_column :stops, :latitude, :float
		remove_column :stops, :coordinates, :point

  end
end
