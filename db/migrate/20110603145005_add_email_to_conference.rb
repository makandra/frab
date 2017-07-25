class AddEmailToConference < ActiveRecord::Migration[4.2]
  def self.up
    add_column :conferences, :email, :string
  end

  def self.down
    remove_column :conferences, :email
  end
end
