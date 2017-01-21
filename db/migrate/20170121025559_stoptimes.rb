class Stoptimes < ActiveRecord::Migration[5.0]
  def change
  	add_column :stops, :start_time, :date
  	add_column :stops, :end_time, :date
  end
end
