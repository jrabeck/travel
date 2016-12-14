class AddDesctoTrip < ActiveRecord::Migration[5.0]
  def change
  	add_column :trips, :description, :string
  end
end
