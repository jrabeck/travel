class UserImagesColumnName < ActiveRecord::Migration[5.0]
  def change
  	rename_column :images, :user_pic_id, :user_id
  end
end
