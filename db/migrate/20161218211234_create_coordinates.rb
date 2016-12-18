class CreateCoordinates < ActiveRecord::Migration[5.0]
  def change
    create_table :coordinates do |t|
      t.string :latitude
      t.string :float
      t.string :longitude
      t.string :float

      t.timestamps
    end
  end
end
