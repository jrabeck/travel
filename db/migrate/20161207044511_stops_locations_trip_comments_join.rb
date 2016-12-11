class StopsLocationsTripCommentsJoin < ActiveRecord::Migration[5.0]
  def change
  	add_column :stops, :coordinates, :point
  	rename_column :stops, :location, :address
  	add_column :trip_comments, :trip_id, :integer
  	add_column :trip_comments, :user_id, :integer
  end
end
