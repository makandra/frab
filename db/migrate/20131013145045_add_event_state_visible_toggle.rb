class AddEventStateVisibleToggle < ActiveRecord::Migration[4.2]
  def change
    add_column :conferences, :event_state_visible, :boolean, default: true
  end
end
