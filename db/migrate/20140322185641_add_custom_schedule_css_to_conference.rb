class AddCustomScheduleCssToConference < ActiveRecord::Migration[4.2]
  def change
    add_column :conferences, :schedule_custom_css, :text, limit: 2.megabytes
  end
end
