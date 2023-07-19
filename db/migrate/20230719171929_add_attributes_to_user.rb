class AddAttributesToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :username, :string
    add_column :users, :user_email, :string
    add_column :users, :password, :string
    add_column :users, :name, :string
    add_column :users, :photo, :text
    add_column :users, :bio, :text
    add_column :users, :gender_identity, :string
  end
end
