class Add < ActiveRecord::Migration[5.0]
  def change
  	add_column :trips, :description, :text
  	add_column :trips, :tagline, :string
  end
end
