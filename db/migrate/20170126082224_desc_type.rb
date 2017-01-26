class DescType < ActiveRecord::Migration[5.0]
  def change
	change_column :trips, :description, :string


  end
end
