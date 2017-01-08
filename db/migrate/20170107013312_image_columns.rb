class ImageColumns < ActiveRecord::Migration[5.0]
  def change
  	add_column :images, :prof_pic_id, :integer
  	add_column :images, :user_pic_id, :integer
  	add_column :images, :stop_id, :integer
  	add_column :images, :trip_id, :integer
  end
end
