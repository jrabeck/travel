class AddressSpecs2 < ActiveRecord::Migration[5.0]
  def change
  	add_column :stops, :city, :string
  end
end
