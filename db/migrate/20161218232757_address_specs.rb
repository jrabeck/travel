class AddressSpecs < ActiveRecord::Migration[5.0]
  def change
  	add_column :stops, :zip, :string
  	add_column :stops, :state, :string
  end
end
