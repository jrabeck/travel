class Reversestopsdatetime < ActiveRecord::Migration[5.0]
  def change
  	  	rename_column :stops, :start_date, :start_time
  	rename_column :stops, :end_date, :end_time
  end
end
