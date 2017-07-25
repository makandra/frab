class FeedbackEnabledBoolean < ActiveRecord::Migration[4.2]
  def up
    change_column :conferences, :feedback_enabled, :boolean, default: false
  end

  def down
    change_column :conferences, :feedback_enabled, :integer
  end
end
