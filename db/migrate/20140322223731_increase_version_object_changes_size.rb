class IncreaseVersionObjectChangesSize < ActiveRecord::Migration[4.2]
  def up
    change_column :versions, :object_changes, :text, limit: 4.megabytes
  end

  def down
    change_column :versions, :object_changes, :text
  end
end
