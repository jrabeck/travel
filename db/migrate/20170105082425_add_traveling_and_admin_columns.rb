class AddTravelingAndAdminColumns < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :traveling, :boolean
  	add_column :usertrips, :admin, :boolean
  end
end
