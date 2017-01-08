class Stopscolumns < ActiveRecord::Migration[5.0]
  def change

  	remove_column :stops, :description, :string


  end
end
