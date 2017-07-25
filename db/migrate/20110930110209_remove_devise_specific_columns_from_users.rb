class RemoveDeviseSpecificColumnsFromUsers < ActiveRecord::Migration[4.2]

  def change
    rename_column :users, :encrypted_password, :password_digest
    remove_column :users, :password_salt
  end

end
