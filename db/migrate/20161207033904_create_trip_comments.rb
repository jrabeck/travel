class CreateTripComments < ActiveRecord::Migration[5.0]
  def change
    create_table :trip_comments do |t|
      t.string :comment

      t.timestamps
    end
  end
end
