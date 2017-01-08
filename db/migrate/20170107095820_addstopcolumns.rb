class Addstopcolumns < ActiveRecord::Migration[5.0]
  def change

  	add_column :stops, :description, :text
  	add_column :stops, :tagline, :string

  end
end
