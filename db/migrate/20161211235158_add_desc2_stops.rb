class AddDesc2Stops < ActiveRecord::Migration[5.0]
  def change
  	add_column :stops, :description, :string
  end
end
