class AddScheduleHtmlIntroToConference < ActiveRecord::Migration[4.2]
  def change
    add_column :conferences, :schedule_html_intro, :text, limit: 2.megabytes
  end
end
