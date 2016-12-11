class Follownames < ActiveRecord::Migration[5.0]
  def change
  	rename_column :follows, :following_user_id, :follower_id
  	rename_column :follows, :followed_user_id, :following_id
  end
end
