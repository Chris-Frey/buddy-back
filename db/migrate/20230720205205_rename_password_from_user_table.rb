class RenamePasswordFromUserTable < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :password, :changemeple

  end
end
