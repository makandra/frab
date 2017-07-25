class AddVideoPublishingInfoToEvent < ActiveRecord::Migration[4.2]
  def change
    add_column :events, :do_not_record, :boolean, default: false
    add_column :events, :recording_license, :string
  end
end
