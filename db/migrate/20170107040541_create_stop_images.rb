class CreateStopImages < ActiveRecord::Migration[5.0]
  def change
    create_table :stop_images do |t|

      t.timestamps
    end
  end
end
