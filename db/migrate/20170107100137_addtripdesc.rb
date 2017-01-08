class Addtripdesc < ActiveRecord::Migration[5.0]
  def change

  	remove_column :trips, :description, :string

  end
end
