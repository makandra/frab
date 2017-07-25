class AddScheduleVersionToConferences < ActiveRecord::Migration[4.2]
  def self.up
    add_column :conferences, :schedule_version, :string, default: nil
  end

  def self.down
    remove_column :conferences, :schedule_version
  end
end
