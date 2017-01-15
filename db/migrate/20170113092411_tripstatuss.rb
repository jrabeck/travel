class Tripstatuss < ActiveRecord::Migration[5.0]
  def change
  	rename_column :trips, :active, :status
  end
end
