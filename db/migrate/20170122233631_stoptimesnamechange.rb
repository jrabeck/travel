class Stoptimesnamechange < ActiveRecord::Migration[5.0]
  def change
  	rename_column :stops, :start_time, :start_date
  	rename_column :stops, :end_time, :end_date
  end
end
