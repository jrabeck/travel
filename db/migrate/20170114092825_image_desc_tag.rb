class ImageDescTag < ActiveRecord::Migration[5.0]
  def change
  	add_column :images, :description, :text
  	add_column :images, :tagline, :string
  end
end
