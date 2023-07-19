class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.string :category
      t.string :activity
      t.text :activity_photo
      t.string :start_time
      t.float :duration
      t.string :location
      t.text :description
      t.integer :user_id

      t.timestamps
    end
  end
end
