class Commentcomments < ActiveRecord::Migration[5.0]
  def change
  	add_column :comments, :comments, :string
  end
end
