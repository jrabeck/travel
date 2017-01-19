class Blogstring < ActiveRecord::Migration[5.0]
  def change
  	add_column :blogentries, :entry, :string
  end
end
