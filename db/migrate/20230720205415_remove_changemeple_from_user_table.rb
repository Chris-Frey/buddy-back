class RemoveChangemepleFromUserTable < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :changemeple

  end
end
