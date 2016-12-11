class AddTripstoStops < ActiveRecord::Migration[5.0]
  def change
  	add_column :stops, :trip_id, :integer
  end
end
