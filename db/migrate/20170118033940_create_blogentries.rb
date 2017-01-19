class CreateBlogentries < ActiveRecord::Migration[5.0]
  def change
    create_table :blogentries do |t|
      t.integer :user_id
      t.integer :blogable_id
      t.string :blogable_type

      t.timestamps
    end
  end
end
