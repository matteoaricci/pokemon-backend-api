class AddTrainerNameToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :trainer_name, :string
    remove_column :users, :password, :string
    add_column :users, :password_digest, :string 
    remove_column :users, :name, :string 
    add_column :users, :username, :string
  end
end
