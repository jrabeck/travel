class AchiveColums < ActiveRecord::Migration[5.0]
  def change
  	add_column :trips, :archived, :boolean
  	add_column :stops, :archived, :boolean
  	add_column :images, :archived, :boolean
  end
end
