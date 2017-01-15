class Commentuserid < ActiveRecord::Migration[5.0]
  def change
  	rename_column :comments, :user, :user_id
  end
end
