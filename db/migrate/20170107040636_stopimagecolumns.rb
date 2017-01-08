class Stopimagecolumns < ActiveRecord::Migration[5.0]
  def change

  	add_column :stop_images, :stop_id, :integer
  	add_column :stop_images, :image_id, :integer
  end
end
