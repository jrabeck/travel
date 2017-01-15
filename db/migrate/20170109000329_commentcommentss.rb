class Commentcommentss < ActiveRecord::Migration[5.0]
  def change
  	rename_column :comments, :comments, :comment
  end
end
