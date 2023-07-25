class AddCreatorIdToActivityTable < ActiveRecord::Migration[7.0]
  def change
    add_column :activities, :creator_id, :integer
  end
end
