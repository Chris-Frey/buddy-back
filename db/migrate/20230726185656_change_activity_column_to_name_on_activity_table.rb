class ChangeActivityColumnToNameOnActivityTable < ActiveRecord::Migration[7.0]
  def change
    rename_column :activities, :activity, :activity_name
  end
end
