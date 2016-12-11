class CreateUsertrips < ActiveRecord::Migration[5.0]
  def change
    create_table :usertrips do |t|
      t.integer :user_id
      t.integer :trip_id

      t.timestamps
    end
  end
end
