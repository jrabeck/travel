class AddOrderStops < ActiveRecord::Migration[5.0]
  def change
  	add_column :stops, :order, :integer
  end
end
